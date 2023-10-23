# DO NOT EDIT THIS FILE

.PHONY: test check

build:
	dune build

code:
	-dune build
	code .
	! dune build --watch

utop:
	OCAMLRUNPARAM=b dune utop lib
	
test:
	OCAMLRUNPARAM=b dune exec test/main.exe

game:
	OCAMLRUNPARAM=b dune exec bin/main.exe

zip:
	rm -f fireknight.zip
	zip -r fireknight.zip . -x@exclude.lst

clean:
	dune clean
	rm -f fireknight.zip

doc:
	dune build @doc

opendoc: doc
	@bash opendoc.sh

