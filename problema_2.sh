#!/bin/bash


titulo=$(grep -A 1 "Title" O_cortico.txt | sed 's/Title://')
n_linhas=$(wc -l "O_cortico.txt")
n_palavras=$(wc -w "O_cortico.txt")
n_caracteres=$(wc -c "O_cortico.txt")
ano_publicacao=$(grep -A 1 "Original publication" O_cortico.txt | sed -n '5s/[^0-9]*\([0-9]\+\).*/\1/p')


echo $titulo
echo $n_linhas
echo $n_palavras
echo $n_caracteres
echo $ano_publicacao


