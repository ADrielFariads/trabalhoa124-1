#!/bin/bash


obra_formatada=$(awk 'NR==119,NR==10394' "O_cortico.txt")
titulo=$(grep -A 1 "Title" O_cortico.txt | sed 's/Title://')
n_linhas=$(awk 'NR==119,NR==10394' "O_cortico.txt" | wc -l)
n_palavras=$(echo $obra_formatada | wc -w)
n_caracteres=$(echo $obra_formatada | wc -m)
ano_publicacao=$(grep -A 1 "Original publication" O_cortico.txt | sed -n '5s/[^0-9]*\([0-9]\+\).*/\1/p')


echo $titulo
echo $n_linhas
echo $n_palavras
echo $n_caracteres
echo $ano_publicacao


