package main

import (
	"flag"
	"fmt"
	"log"
	"os"

	"github.com/jacobsa/go-serial/serial"
)

func exists(f string) bool {
	_, err := os.Stat(f)
	return err == nil
}

var autodetect = []string{
	"COM1",
	"COM2",
	"COM3",
	"/dev/ttyUSB0",
	"/dev/ttyUSB1",
}

func main() {
	var baud uint
	var file string
	flag.UintVar(&baud, "baud", 115200, "baud rate")
	flag.StringVar(&file, "file", "", "xmodem file")
	flag.Parse()
	args := flag.Args()

	var portName string
	if len(args) <= 0 {
		for _, f := range autodetect {
			if exists(f) {
				portName = f
				break
			}
		}
		if portName == "" {
			log.Fatal("could not autodetect serial port")
		}
	} else {
		portName = args[0]
	}

	options := serial.OpenOptions{
		PortName:        portName,
		BaudRate:        baud,
		DataBits:        8,
		StopBits:        1,
		MinimumReadSize: 1,
	}

	port, err := serial.Open(options)
	if err != nil {
		log.Fatalf("uart open: %v", err)
	}

	fmt.Printf("Connected to %s, baud: %d\n", options.PortName, options.BaudRate)

	defer port.Close()

	buf := make([]byte, 1024)
	for {
		n, err := port.Read(buf)
		if err != nil {
			log.Fatal(err)
		}
		fmt.Print(string(buf[:n]))
	}
}
