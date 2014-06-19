all: build test clean

build:
	rustc core/rust-sdl/src/sdl/lib.rs
	rustc --crate-type=lib core/graphics_sdl.rs -L.
	rustc --crate-type=lib core/sdl_io.rs -L.
	rustc -o schip main.rs -L.

test:
	rustc core_tests.rs --test -L .

clean:
	rm *.rlib
