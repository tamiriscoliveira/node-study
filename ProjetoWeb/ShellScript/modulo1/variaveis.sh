#!/usr/bin/env bash

#variaveis em shell script não tem um formato
NOME="Tamiris

Coutinho"
echo "$NOME"

NUMERO_1=24
NUMERO_2=45

TOTAL=$(($NUMERO_1+$NUMERO_2))

echo "$TOTAL"


SAIDA_CAT="$(cat /etc/passwd | grep tamiris)"

echo "$SAIDA_CAT"

echo "====================================================="
#variaveis reservadas são variaveis com valores padrões


echo "Parametno 1: $1"
echo "Parametro 2: $2"


#ver todos os parametros
echo "todos os parâmetros: $*"
echo "quantos paramentros: $#"
echo "saida do ultimo comando: $?"

#pegar o pid
echo "PID: $$"

#busca o nome do script
echo "nome do script: $0"
