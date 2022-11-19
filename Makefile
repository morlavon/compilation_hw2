.PHONY: all clean

all: clean
	flex scanner-ref.lex
	bison -Wcounterexamples -d parser-ref.ypp
	g++ -std=c++17 -o hw2 *.c *.cpp
clean:
	rm -f lex.yy.c
	rm -f parser-ref.tab.*pp
	rm -f hw2
