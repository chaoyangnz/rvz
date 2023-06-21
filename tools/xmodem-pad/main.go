package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"path/filepath"
)

func main() {
	out := flag.String("o", "firmware.img", "output file")
	in := flag.String("i", "", "input file")
	flag.Parse()
	if len(*in) == 0 {
		log.Fatal("no input")
	}
	inPath, err := filepath.Abs(*in)
	if err != nil {
		log.Fatal(err)
	}
	outPath := filepath.Join(filepath.Dir(inPath), *out)

	bytes, err := os.ReadFile(inPath)
	if err != nil {
		log.Fatal(err)
	}

	pads := len(bytes) % 128
	blocks := len(bytes) / 128
	if pads != 0 {
		blocks = blocks + 1
	}
	size := blocks * 128

	log.Printf("lengh %d, blocks %d, pads %d, total %d \n", len(bytes), blocks, pads, size)

	buffer := make([]byte, blocks*128)
	for i, b := range buffer {
		if i < len(bytes) {
			buffer[i] = b
		} else {
			buffer[i] = 0x1A // <SUB>
		}
	}

	os.WriteFile(outPath, buffer, 0644)
	fmt.Println("write to " + outPath)
}
