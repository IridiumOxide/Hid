all:
	ghc -o interpreter Hid.hs
clean:
	rm interpreter *.o *.hi