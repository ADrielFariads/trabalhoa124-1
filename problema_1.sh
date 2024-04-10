#!/bin/bash

for arquivo in $1; do
	if [ -f $arquivo ]; then
		primeira_linha=$(head -n 1 $arquivo)
		if [ $primeira_linha = "#!/bin/bash" ]; then
			chmod 770 $arquivo
		fi

	fi
done

 

