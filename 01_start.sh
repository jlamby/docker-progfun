#!/bin/bash

function containerExists {
	containerExists=0
	res=$(docker ps -a | grep $1)

	#echo "Result " $res "\n"

	if [ -n "$res" ]; then
		containerExists=1
	fi

	echo $containerExists
}

echo "Traitement du container de données ..."

isDatasExists=$(containerExists DATAS)

if [[ $isDatasExists -eq 0 ]]; then
	echo "    n'existe pas, run !"
	docker run --name DATAS wkdatas
else
	echo "   existe, start !"
	docker start DATAS
fi

echo "Lancement du container scala" 
docker run --rm --name progfun -t -i --volumes-from DATAS -v /scala:/scala docker-scala /bin/bash
