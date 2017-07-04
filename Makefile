EXE = rcmacro
SOURCES = $(wildcard src/*.rkt)

all: build/rcmacro

build/rcmacro: $(SOURCES) | build/
	raco exe -o build/rcmacro src/rcmacro.rkt

run: build/rcmacro
	echo "int main() {}" > foo.c
	echo "int main() {}" > bar.c
	./build/rcmacro foo.c bar.c
	rm -f foo.c bar.c

test: build/rcmacro
	./build/rcmacro -o foo_exp.c foo.c && \
    echo "output: " && cat foo_exp.c && rm -f foo_exp.c

build/:
	mkdir -p build/

clean:
	rm -rf build/
