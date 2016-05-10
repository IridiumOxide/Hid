all:
	ghc -o Interpreter Hid.hs
clean:
	rm Interpreter *.o *.hi