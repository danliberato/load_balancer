# Load Balancer project
This project is a simple Load Balancer composed by:
- HaProxy
- FastAPI
- Docker
- K6 (to run load tests)

### What I'm going to find here?
This project builds up a Load Balancer (HaProxy) and HTTP APIs. \
The HaProxy has up to 9 APIs.\
The docker-compose file that will set up the LB and 5 APIs (by default).\
A file (scripts/instance_commands.sh) which is meant to start/stop each application individually.

### Requirements
- Docker 20.18.10+
- Docker-compose 1.27.4+

### How to set up?
The following command will install K6:
```shell
$ sudo ./setup.sh
```
And if you want to install the Python dependencies related to this project, simply run:
```shell
$ sudo ./setup.sh dev
```

### Running a new instance
To run a new service instance, simply run the following command where X is the service id (between 1 and 9):
```shell
$ sh scripts/instance_commands.sh start X
```

### Stop a running instance
To run a new service instance, simply run the following command where X is the service id:
```shell
$ sh scripts/instance_commands.sh stop X
```

### How to run the load test
```shell
$ k6 run dsd.js
```