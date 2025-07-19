#!/bin/bash

for i in '20k' '100k' '200k' '400k' '600k' '800k'; do
    docker build --build-arg BUILDTIME_FIDELITY=$i -t registry.k8s.lab/znn:$i .
    docker push registry.k8s.lab/znn:$i
done
