# Load Balancer
This project is a simple Load Balancer.
It uses:
- HaProxy
- Python (FastAPI)
- Docker

(links to be added)
### How to install
The following command will install K6:
```shell
$ sudo ./setup.sh
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

## To improve
Add some CPU usage heuristic to balancing the load;
