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

### Plugin Configuration (After install)

* After doing the compose-up, you access grafana UI on the browser (localhost:3000) and you login with your credentials 
* Once you login, you need to enable the plugin, to do so you have to login into your grafana acount or create one, then you go to the api key page and create a new api key, after doing it you copy the key and paste it in the plugins page to enable worldping. 
* If you already have an endpoint configurated in your grafana account, you don't have to do anything else. If you don't, you have to create a new endpoint and setup the tests (DNS, PING, HTTP and HTTPS)
