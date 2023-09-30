/*
 * SPDX-License-Identifier: BSD-2-Clause
 *
 * Copyright (c) 2019 Western Digital Corporation or its affiliates.
 *
 * Authors:
 *   Anup Patel <anup.patel@wdc.com>
 */

typedef unsigned int  u32;
typedef unsigned short u16;
typedef unsigned char u8;

static inline void __raw_writeb(u8 val, volatile void *addr)
{
    asm volatile("sb %0, 0(%1)" : : "r"(val), "r"(addr));
}

static inline void __raw_writew(u16 val, volatile void *addr)
{
    asm volatile("sh %0, 0(%1)" : : "r"(val), "r"(addr));
}

static inline void __raw_writel(u32 val, volatile void *addr)
{
    asm volatile("sw %0, 0(%1)" : : "r"(val), "r"(addr));
}

static inline u8 __raw_readb(const volatile void *addr)
{
    u8 val;

    asm volatile("lb %0, 0(%1)" : "=r"(val) : "r"(addr));
    return val;
}

static inline u16 __raw_readw(const volatile void *addr)
{
    u16 val;

    asm volatile("lh %0, 0(%1)" : "=r"(val) : "r"(addr));
    return val;
}

static inline u32 __raw_readl(const volatile void *addr)
{
    u32 val;

    asm volatile("lw %0, 0(%1)" : "=r"(val) : "r"(addr));
    return val;
}

#define __io_br()	do {} while (0)
#define __io_ar()	__asm__ __volatile__ ("fence i,r" : : : "memory");
#define __io_bw()	__asm__ __volatile__ ("fence w,o" : : : "memory");
#define __io_aw()	do {} while (0)

#define readb(c)	({ u8  __v; __io_br(); __v = __raw_readb(c); __io_ar(); __v; })
#define readw(c)	({ u16 __v; __io_br(); __v = __raw_readw(c); __io_ar(); __v; })
#define readl(c)	({ u32 __v; __io_br(); __v = __raw_readl(c); __io_ar(); __v; })

#define writeb(v,c)	({ __io_bw(); __raw_writeb((v),(c)); __io_aw(); })
#define writew(v,c)	({ __io_bw(); __raw_writew((v),(c)); __io_aw(); })
#define writel(v,c)	({ __io_bw(); __raw_writel((v),(c)); __io_aw(); })



struct sbi_console_device {
    /** Name of the console device */
    char name[32];

    /** Write a character to the console output */
    void (*console_putc)(char ch);

    /** Write a character string to the console output */
    unsigned long (*console_puts)(const char *str, unsigned long len);

    /** Read a character from the console input */
    int (*console_getc)(void);
};

/* clang-format off */

#define UART_RBR_OFFSET		0	/* In:  Recieve Buffer Register */
#define UART_THR_OFFSET		0	/* Out: Transmitter Holding Register */
#define UART_DLL_OFFSET		0	/* Out: Divisor Latch Low */
#define UART_IER_OFFSET		1	/* I/O: Interrupt Enable Register */
#define UART_DLM_OFFSET		1	/* Out: Divisor Latch High */
#define UART_FCR_OFFSET		2	/* Out: FIFO Control Register */
#define UART_IIR_OFFSET		2	/* I/O: Interrupt Identification Register */
#define UART_LCR_OFFSET		3	/* Out: Line Control Register */
#define UART_MCR_OFFSET		4	/* Out: Modem Control Register */
#define UART_LSR_OFFSET		5	/* In:  Line Status Register */
#define UART_MSR_OFFSET		6	/* In:  Modem Status Register */
#define UART_SCR_OFFSET		7	/* I/O: Scratch Register */
#define UART_MDR1_OFFSET	8	/* I/O:  Mode Register */

#define UART_LSR_FIFOE		0x80	/* Fifo error */
#define UART_LSR_TEMT		0x40	/* Transmitter empty */
#define UART_LSR_THRE		0x20	/* Transmit-hold-register empty */
#define UART_LSR_BI		0x10	/* Break interrupt indicator */
#define UART_LSR_FE		0x08	/* Frame error indicator */
#define UART_LSR_PE		0x04	/* Parity error indicator */
#define UART_LSR_OE		0x02	/* Overrun error indicator */
#define UART_LSR_DR		0x01	/* Receiver data ready */
#define UART_LSR_BRK_ERROR_BITS	0x1E	/* BI, FE, PE, OE bits */

/* clang-format on */

static volatile char *uart8250_base;
static u32 uart8250_in_freq;
static u32 uart8250_baudrate;
static u32 uart8250_reg_width;
static u32 uart8250_reg_shift;

static u32 get_reg(u32 num)
{
    u32 offset = num << uart8250_reg_shift;

    if (uart8250_reg_width == 1)
        return readb(uart8250_base + offset);
    else if (uart8250_reg_width == 2)
        return readw(uart8250_base + offset);
    else
        return readl(uart8250_base + offset);
}

static void set_reg(u32 num, u32 val)
{
    u32 offset = num << uart8250_reg_shift;

    if (uart8250_reg_width == 1)
        writeb(val, uart8250_base + offset);
    else if (uart8250_reg_width == 2)
        writew(val, uart8250_base + offset);
    else
        writel(val, uart8250_base + offset);
}

static void uart8250_putc(char ch)
{
    while ((get_reg(UART_LSR_OFFSET) & UART_LSR_THRE) == 0)
        ;

    set_reg(UART_THR_OFFSET, ch);
}

static int uart8250_getc(void)
{
    if (get_reg(UART_LSR_OFFSET) & UART_LSR_DR)
        return get_reg(UART_RBR_OFFSET);
    return -1;
}

static struct sbi_console_device uart8250_console = {
        .name = "uart8250",
        .console_putc = uart8250_putc,
        .console_getc = uart8250_getc
};

int uart8250_init(unsigned long base, u32 in_freq, u32 baudrate, u32 reg_shift,
                  u32 reg_width, u32 reg_offset)
{
    u16 bdiv = 0;

    uart8250_base      = (volatile char *)base + reg_offset;
    uart8250_reg_shift = reg_shift;
    uart8250_reg_width = reg_width;
    uart8250_in_freq   = in_freq;
    uart8250_baudrate  = baudrate;

    if (uart8250_baudrate) {
        bdiv = (uart8250_in_freq + 8 * uart8250_baudrate) /
               (16 * uart8250_baudrate);
    }

    /* Disable all interrupts */
    set_reg(UART_IER_OFFSET, 0x00);
    /* Enable DLAB */
    set_reg(UART_LCR_OFFSET, 0x80);

    if (bdiv) {
        /* Set divisor low byte */
        set_reg(UART_DLL_OFFSET, bdiv & 0xff);
        /* Set divisor high byte */
        set_reg(UART_DLM_OFFSET, (bdiv >> 8) & 0xff);
    }

    /* 8 bits, no parity, one stop bit */
    set_reg(UART_LCR_OFFSET, 0x03);
    /* Enable FIFO */
    set_reg(UART_FCR_OFFSET, 0x01);
    /* No modem control DTR RTS */
    set_reg(UART_MCR_OFFSET, 0x00);
    /* Clear line status */
    get_reg(UART_LSR_OFFSET);
    /* Read receive buffer */
    get_reg(UART_RBR_OFFSET);
    /* Set scratchpad */
    set_reg(UART_SCR_OFFSET, 0x00);

//    sbi_console_set_device(&uart8250_console);

    return 0;
}

#define UART0 0x10000000L

static int init = 0;

//uart0: serial@10000000 {
//    compatible = "snps,dw-apb-uart";
//    reg = <0x0 0x10000000 0x0 0x10000>;
//    reg-io-width = <4>;
//    reg-shift = <2>;
//    clocks = <&clkgen JH7110_UART0_CLK_CORE>,
//    <&clkgen JH7110_UART0_CLK_APB>;
//    clock-names = "baudclk", ”apb_pclk";
//    resets = <&rstgen RSTN_U0_DW_UART_APB>,
//    <&rstgen RSTN_U0_DW_UART_CORE>;
//    interrupts = <32>;
//    status = "disabled";
//};
void _putchar(char ch)
{
    if(!init) {
        uart8250_init(UART0, 4000000, 115200, 2, 4, 0);
        init = 1;
    }
    uart8250_console.console_putc(ch);
}
