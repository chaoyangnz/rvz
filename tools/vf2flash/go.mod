module vf2flash

go 1.19

require (
	github.com/jacobsa/go-serial v0.0.0-20180131005756-15cf729a72d4
	xmodem v0.0.0-00010101000000-000000000000
)

require (
	github.com/buger/goterm v1.0.4 // indirect
	golang.org/x/sys v0.4.0 // indirect
)

replace xmodem => ../xmodem
