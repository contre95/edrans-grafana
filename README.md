# Grafana for gaphing metrics for Website

This project is intended to create a compose file in order to deploy a docker cluster to graph metrics of our Website with Grafana.


### Prerequisites
You will need:

```
Makefile
Docker
Docker Compose
```

### Installation

```
$ make
$ docker-compose up
```

## Makefile
Commands:
* nofolders : deletes all folders.
* folder : creates necessary folders.
* permissions:  set necessary permissions to fix Grafana issue

### Acknowledgments

* Makefile is important deu to an issue reported by Grafana on permissions with versions >  5.1.0
