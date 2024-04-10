#!/bin/bash



if [[ $quantidade =~ ^[0-9]+$ ]]; then
	echo "Erro: $1 não é um argumento válido"
	exit 1
fi


echo "<!DOCTYPE html>" > palavras.html
echo "<html>" >> palavras.html
echo "<head>" >> palavras.html
echo "<title>Tabela de Palavras Mais Frequentes</title>" >> palavras.html
echo "</head>" >> palavras.html
echo "<body>" >> palavras.html
echo "<h1>Tabela de Palavras Mais Frequentes</h1>" >> palavras.html
echo "<table border='1'>" >> palavras.html
echo "<tr><th>Ocorrências</th><th>Palavra</th></tr>" >> palavras.html

awk '{print $2, $1}' vocabulario.txt | sort -nr > palavras_ordenadas.txt


head -n $1 palavras_ordenadas.txt | while read -r palavra ocorrencias; do
    echo "<tr><td>$palavra</td><td>$ocorrencias</td></tr>" >> palavras.html
done

rm palavras_ordenadas.txt

