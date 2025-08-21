#!/bin/bash

REPOSITORY=registry.k8s.lab/znn

if [ ! -z $1 ]
then
    REPOSITORY=$1
fi

for i in '20k' '100k' '200k' '400k' '600k' '800k'; do
    docker build --build-arg BUILDTIME_FIDELITY=$i -t $REPOSITORY:$i .
    docker push $REPOSITORY:$i
done
