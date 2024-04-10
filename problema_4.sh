#!/bin/bash

touch vocabulario.txt

cat O_cortico.txt | tr -cs '[:alpha:]' '[\n*]' | grep -E '^.{4,}$' | grep -vE '^[[:upper:]]' | sort | uniq -c | awk '{print $2, $1}' > vocabulario.txt


