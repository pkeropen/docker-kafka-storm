#!/bin/bash

case "$1" in
        initial)
            docker build -t=pkeropen3/base storm/framework/base
            docker build -t=pkeropen3/storm storm/framework/storm
            

            docker build -t=kafka-producer kafka/example-kafka-producer
            docker build -t=storm-topology storm/example-storm-topology

            docker-compose build
            ;;

        kafka-producer)
            docker build -t=kafka-producer kafka/example-kafka-producer
            ;;

        storm-topology)
            docker build -t=storm-topology storm/example-storm-topology
            ;;

        *)
            echo $"Usage: $0 {initial|kafka-producer|storm-topology}"
            exit 1
esac
