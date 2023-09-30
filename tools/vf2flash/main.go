// Utility for automatically flashing firmware onto the VisionFive 2

package main

import (
	"bytes"
	_ "embed"
	"flag"
	"fmt"
	"github.com/jacobsa/go-serial/serial"
	"io"
	"log"
	"os"
	"xmodem"
)

// this is the custom build of visionfive2 u-boot-spl with CONFIG_SPL_YMODEM_SUPPORT=y
//
//go:embed u-boot-spl.bin.normal.out
var spl []byte

// visionfive2 recovery
//
//go:embed jh7110-recovery-20230322.bin
var recovery []byte

// my own spl attempt using Zig, it supports XModem as well.
//
//go:embed splz.bin.normal.out
var splz []byte

func exists(f string) bool {
	_, err := os.Stat(f)
	return err == nil
}

var buf = make([]byte, 1024)

const POLL uint8 = 0x43

var autodetect = []string{
	"/dev/ttyUSB0",
	"/dev/ttyUSB1",
	"/dev/ttyACM0",
	"COM0",
	"COM1",
	"COM2",
	"COM3",
}

func waitFor(port io.ReadWriter, buf []byte, b byte) {
	for {
		n, err := port.Read(buf)
		if err != nil {
			log.Fatal(err)
		}
		fmt.Print(string(buf))
		if n > 0 && buf[n-1] == b {
			break
		}
	}
}

func main() {
	const (
		NONE     = 0
		SPL      = 1
		RECOVERY = 2
		SPLZ     = 3
	)
	loader := SPLZ
	term := false
	fw := ""
	var baud = flag.Uint("baud", 115200, "baud rate")
	var device = flag.String("d", "/dev/ttyUSB0", "UART device file or port name")
	flag.IntVar(&loader, "l", NONE, "which loader to send: 0) none 1) SPL -> DRAM 0x40000000, 2) RECOVERY -> SPI Flash 2nd sector 3) SPLz -> DRAM 0x40000000")
	flag.BoolVar(&term, "t", true, "keep the term opening anytime no file sending")
	flag.StringVar(&fw, "f", "", "the firmware you hope to upload")
	flag.Parse()

	if len(fw) <= 0 {
		log.Printf("no firmware file given")
	}

	autodetect = append(autodetect, *device)

	var file string
	for _, f := range autodetect {
		if exists(f) {
			file = f
			break
		}
	}
	if file == "" {
		log.Fatal("could not autodetect serial port")
	}

	options := serial.OpenOptions{
		PortName:        file,
		BaudRate:        *baud,
		DataBits:        8,
		StopBits:        1,
		MinimumReadSize: 1,
	}

	port, err := serial.Open(options)
	if err != nil {
		log.Fatalf("uart open: %v", err)
	}

	fmt.Printf("Connected to %s, baud: %d, Please push reset button now\n", options.PortName, options.BaudRate)
	fmt.Printf("Waiting for poll sequence..\n")

	defer port.Close()

	switch loader {
	case SPL:
		sendSpl(port)
	case RECOVERY:
		sendRecovery(port)
	case SPLZ:
		sendSplz(port)
	case NONE:
	}

	if fw != "" {
		sendFirmware(port, fw)
	}

	if term {
		poll(port)
	}

}

func sendSplz(port io.ReadWriter) {
	// wait until we see the bootloader startup sequence
	waitFor(port, buf, POLL)

	fmt.Printf("\nStart sending splz\n")
	err := xmodem.ModemSend(port, splz)
	if err != nil {
		panic("Failed to send splz")
	}
}

func sendSpl(port io.ReadWriter) {
	// wait until we see the bootloader startup sequence
	waitFor(port, buf, POLL)

	fmt.Printf("\nStart sending spl\n")
	err := xmodem.ModemSend(port, spl)
	if err != nil {
		panic("Failed to send spl")
	}

	fmt.Println("SPL updated")
}

func sendRecovery(port io.ReadWriter) {
	// wait until we see the bootloader startup sequence
	waitFor(port, buf, POLL)

	fmt.Printf("Start sending recovery\n")
	err := xmodem.ModemSend(port, recovery)
	if err != nil {
		panic("Failed to send recovery")
	}

	// wait until we see the bootloader startup sequence
	seen := &bytes.Buffer{}
	for {
		n, err := port.Read(buf)
		if err != nil {
			log.Fatal(err)
		}
		seen.Write(buf[:n])
		if bytes.Contains(seen.Bytes(), []byte("select the function to test:")) {
			fmt.Println(string(seen.Bytes()))
			// enter '2', meaning 'update uboot'
			port.Write([]byte{'2'})
			port.Write([]byte{'\r'})
			fmt.Println("2")
			break
		}
	}
}

func sendFirmware(port io.ReadWriter, fw string) {
	waitFor(port, buf, POLL)
	// send the firmware over xmodem
	b, err := os.ReadFile(fw)
	if err != nil {
		panic("Failed to read firmware file: " + fw)
	}

	fmt.Printf("\nStart sending firmware %s \n", fw)
	err = xmodem.ModemSend(port, b)
	if err != nil {
		panic("Failed to send firmware")
	}

	fmt.Println("Firmware updated")
}

func poll(port io.ReadWriter) {
	println()
	for {
		n, err := port.Read(buf)
		if err != nil {
			log.Fatal(err)
		}
		fmt.Print(string(buf[:n]))
	}
}
