#!/usr/bin/env bash

#Lista usuários - extrai os usuários do /etc/passwd

#irá extrair usuários do /etc/passwd,havendo a possibilidade de colocar em letas maiusculo e em ordem alfabética

#----------------------VARIAVEIS ------------------------------------------------------------

USUARIOS="$(cat /etc/passwd | cut -d ':' -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

  -h - Menu de Ajuda
  -v - Versão
  -s - Ordenar a saída
  -m - Coloca em maiúsculo
"
VERSAO="V1.2"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0
#
#-----------------------EXECUÇÃO -------------------------------------------------------------#
case "$1" in
  -h) echo "$MENSAGEM_USO" && exit 0       ;;
  -v) echo "$VERSAO" && exit 0             ;;
  -s) CHAVE_ORDENA=1			                 ;;
  -m) CHAVE_MAIUSCULO=1                    ;;
   *) echo "$USUARIOS"                     ;;
esac

[ $CHAVE_ORDENA -eq  1 ] &&  echo "$USUARIOS" | sort
[ $CHAVE_MAIUSULO -eq 1 ] && echo "$USUARIOS" | tr [a-z] [A-Z]


# if [ "$1" = "-h" ]; then
#     echo "$MENSAGEM_USO" && exit 0
# fi
#
# if [ "$1" = "-v" ]; then
#   echo "$VERSAO" && exit 0
# fi
#
# if [ "$1" = "-s" ]; then
#   echo "$USUARIOS" | sort  && exit 0
# fi
# echo "$USUARIOS"
