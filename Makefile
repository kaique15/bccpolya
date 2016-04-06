CC=gcc
CFLAGS=-W -Wall -pedantic -std=c11
LFLAGS=-lm

SRC=$(wildcard *.C)
BIN=$(SRC:.C=)

.PHONY: all clean help

help:
	@echo "Sintaxe: make <opçoes>"
	@echo "   Opçoes:"
	@echo "        help : mostra esta mensagem"
	@echo "		   all : compila todos os fontes da pasta"
	@echo "        clean : apaga todos os binarios criados"
	@echo ""
	
all: $(BIN)

clean:
	@rm -f $(BIN)
	
%:%.c
	@echo -n "gerando executaveis $@"
	@$(CC) $< -o $@ $(CFLAGS) $(LFLAGS) && echo " [OK]"
