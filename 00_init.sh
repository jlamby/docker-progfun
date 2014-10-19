#!/bin/bash

echo "Creation d'un volume de persistance pour les données"
docker build -t wkdatas ./datas/.

echo "Recuperation de l'image docker-scala"
docker build -t docker-scala ./runtime/.
