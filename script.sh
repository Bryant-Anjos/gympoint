#!/usr/bin/env bash
#
# script.sh - Faz a configuração inicial do projeto Gympoint
#
# Autor: Bryant 
#
# ------------------------------------------------------------------------- #
# Programa para criar o arquivo .env e instalar as dependências dos projetos
# do backend, web e mobile do Gympoint utilizando o Yarn ou o NPM.
#
# Exemplos:
#     $ ./script.sh -i
#       Faz toda a configuração necessária.
# ------------------------------------------------------------------------- #
# Histórico:
#
# v0.1 04/01/2020, Bryant:
#     - Realiza as configurações iniciais do projeto
# ------------------------------------------------------------------------- #
# Testado em:
#   bash 5.0.11(1)-release
# ------------------------------------------------------------------------- #
# Agradecimentos:
#
#   Mateus Müler - Por ensinar os conhecimentos aplicados nesse programa.
# ------------------------------------------------------------------------- #
# TODO
#
#   Adicionar a funcionalidade de criar os bancos de dados no Docker.
#   Adicionar a funcionalidade de execução.
# ------------------------------------------------------------------------- #

# -------------------------- VARIÁVEIS ------------------------------------ #
HELP="
  $(basename $0) - [OPÇÔES]

  -h - Menu de ajuda.
  -v - Versão.
  -i - Faz as configurações iniciais do projeto
"
VERSAO="v0.1"
BACKEND="$(pwd)/backend"
WEB="$(pwd)/frontend"
MOBILE="$(pwd)/mobile"
PACKAGE_MANAGER=""
CONFIGURE=0

# ------------------------------------------------------------------------- #

# -------------------------- TESTES --------------------------------------- #

if [ -x "$(which yarn)" ]; then
  PACKAGE_MANAGER="yarn install --cwd"
elif [ -x "$(which npm)" ]; then
  PACKAGE_MANAGER="npm install --prefix"
else
  echo "Yarn e NPM não encontrados.
Para prosseguir a configuração instale um destes."
fi

# ------------------------------------------------------------------------- #

# -------------------------- FUNÇÕES -------------------------------------- #

Configure () {
  echo "$(cat "$BACKEND"/.env.example > "$BACKEND"/.env)"
  echo "$($PACKAGE_MANAGER "$BACKEND")"
  echo "$($PACKAGE_MANAGER "$WEB")"
  echo "$($PACKAGE_MANAGER "$MOBILE")"
}

# ------------------------------------------------------------------------- #

# -------------------------- EXECUÇÃO ------------------------------------- #

while test -n "$1"
do
  case "$1" in
    -h) echo "$HELP" && exit 0                                     ;;
    -v) echo "$VERSAO" && exit 0                                   ;;
    -i) CONFIGURE=1                                                ;;
     *) echo "Comando inválido. Veja as opções disponíveis com -h" ;;
  esac
  shift
done

[ $CONFIGURE -eq 1 ] && Configure

# ------------------------------------------------------------------------- #