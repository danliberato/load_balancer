#!/bin/bash

case "$1" in
    start)
      if [ $2 ];
      then
        docker build -t api_$(echo $2) --build-arg app_id=$(echo $2) .
        docker run -d --name api_$(echo $2) --network load_balancer_public_net --ip 192.0.0.1$(echo $2) -p 808$(echo $2):8080 api_$(echo $2)
      else
        echo Error: Provide an service identification between 1 and 9 as argument.
      fi
    ;;

    stop)
      if [ $2 ];
      then
        docker stop api_$(echo $2)
        docker rm api_$(echo $2)
      else
        echo Error: Provide an service identification between 1 and 9 as argument.
      fi
    ;;

    *)
      echo "Options are:"
      echo "add | To create a new service instance (requires one argument)"
      echo "stop | To stop a service instance (requires one argument)"
      echo "Arguments are service IDs, and must be between 1 and 9"
    ;;
esac