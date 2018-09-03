# Grafana for gaphing metrics for Website

This project is intended to create a compose file in order to deploy a docker cluster to graph metrics of our Website with Grafana.
We are aiming to deploy an TIG Stack. 

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
* folders : creates necessary folders.
* permissions:  set necessary permissions to fix Grafana issue
* teleconf: copies telegraf.conf from ./conf to ./telegraf/conf/ (depends on folders of course)

### Acknowledgments

* Makefile is important due to an issue reported by Grafana on permissions with versions >  5.1.0
* For those who are not familiar with the term (Like me 2 minutes ago) TIG stands for (TELEGRAF.INFLUXDB.GRAFANA)
