# RVZ

A xv6 port on JH7110 using Zig (WIP).

> Currently I run on VisionFive2. In [rvx](https://github.com/chaoyangnz/rvx), I managed to port on Nezha D1.


# Development (Ubuntu)

## Prerequisite

- [VisionFive2](https://rvspace.org)

Unbuntu:
- USB-UART driver: `sudo apt install libusb-1.0-0-dev`
- COM GUI: [cutecom]: `sudo apt install cutecom`
- packages: 
    - `sudo apt-get install -y gcc-riscv64-linux-gnu`
    - `snap install zig --classic --edge`

## Validation

- `lsusb`

Bus 001 Device 004: ID 0403:6001 Future Technology Devices International, Ltd FT232 Serial (UART) IC

`sudo adduser <user> dialout`

## Tools

These tools may be needed during build, so better to put them in `$PATH`.

- [vf2-programmer](./tools/vf2-programmer/vf2-programmer)

A utility to help load your kernel into DRAM and run and also flash your kernel into SPI Flash sector. It also can act as a Serial terminal.

- [vf2-uboot-fit-imager](./tools/vf2-uboot-fit-imager/vf2-uboot-fit-imager)

A cli tool to build U-boot FIT image with visionfive ITS.

## Build (test bare metal)

```
cd kernel
./build.sh
```

The above will load the binary to DRAM 0x40000000 and run.

You should be able to see UART output.

See UTART output in `Cutecom` as well.
