#!/usr/bin/env bash
# simple-interest.sh
# Uso: ./simple-interest.sh principal rate years

if [ "$#" -ne 3 ]; then
  echo "Uso: $0 principal rate years"
  exit 1
fi

principal=$1
rate=$2
years=$3

# calcular interés simple: I = P * r * t / 100
interest=$(awk -v p="$principal" -v r="$rate" -v t="$years" 'BEGIN{printf "%.2f", p * r * t / 100}')
echo "Simple interest for principal $principal at rate $rate% for $years years is: $interest"
