#include "riscv.h"
#include "bitfields.h"
#include "printf.h"

#define UART0 0x10000000L
#define RBR 0                 // In: receive buffer register
#define THR 0                 // Out: transmit holding register
#define DLL		0	/* Out: Divisor Latch Low */
#define IER 1                 // I/O: interrupt enable register
#define IER_RX_ENABLE (1<<0)
#define IER_TX_ENABLE (1<<1)
#define FCR 2                 // FIFO control register
#define FCR_FIFO_ENABLE (1<<0)
#define FCR_FIFO_CLEAR (3<<1) // Out: clear the content of the two FIFOs
#define ISR 2                 // I/O: interrupt status register
#define LCR 3                 // line control register
#define LCR_EIGHT_BITS (3<<0)
#define LCR_BAUD_LATCH (1<<7) // special mode to set baud rate
#define MCR		4	/* Out: Modem Control Register */
#define LSR 5       // In:  line status register
#define LSR_5_THRE BIT(5)
#define MSR		6	/* In:  Modem Status Register */
#define SCR		7	/* I/O: Scratch Register */

#define UART_REG(offset) (UART0 + 4 *(offset))


void uart_init() {
//    /* Disable all interrupts */
//    w_mem(UART_REG(IER), 0x00);
//    /* Enable DLAB */
//    w_mem(UART_REG(LCR), 0x80);
//
//    /* 8 bits, no parity, one stop bit */
//    w_mem(UART_REG(LCR), 0x03);
//    /* Enable FIFO */
//    w_mem(UART_REG(FCR), 0x01);
//    /* No modem control DTR RTS */
//    w_mem(UART_REG(MCR), 0x00);
//    /* Clear line status */
//    r_mem(UART_REG(LSR));
//    /* Read receive buffer */
//    r_mem(UART_REG(RHR));
//    /* Set scratchpad */
//    w_mem(UART_REG(SCR), 0x00);

//    printf("IER: %b\n", r_mem(UART_REG(IER)));
//    printf("LCR: %b DLAB %b\n", r_mem(UART_REG(LCR)));
//    printf("FCR: %b FIFO %b\n", r_mem(UART_REG(FCR)));
//    printf("MCR: %b\n", r_mem(UART_REG(MCR)));
}


void tx(char b) {
    // wait for THR to be empty
    // while (get(r_mem(UART_REG(LSR)), LSR_5_THRE) == 0);
    w_mem(UART_REG(THR), b);
}

void _putchar(char ch)
{
    tx(ch);
}