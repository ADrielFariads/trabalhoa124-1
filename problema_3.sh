#!/bin/bash


sort palavras_antigas.lst | uniq > temp_ocorrencias.txt


grep -o -f temp_ocorrencias.txt O_cortico.txt | sort | uniq -c > temp1_ocorrencias.txt

awk '{print $2, $1}' temp1_ocorrencias.txt > ocorrencias.txt


rm temp_ocorrencias.txt
rm temp1_ocorrencias.txt

