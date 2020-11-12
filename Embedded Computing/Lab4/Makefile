

main: huffman.c tree.c tree.h huffman.h binaryio.c binaryio.h binaryops.c binaryops.h
	gcc huffman.c tree.c binaryio.c binaryops.c -o codec -g

testBinaryIO: testbinaryio.c binaryio.c binaryops.c
	gcc testbinaryio.c binaryio.c binaryops.c -o bintest
