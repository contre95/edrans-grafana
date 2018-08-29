all: folders rwx-grafana

folders:
	sudo mkdir -p ./grafana/data ./grafana/conf ./influxdb/conf
rwx-grafana:
	sudo chown 472:472 ./grafana
nofolders:
	sudo rm -rf ./grafana ./influxdb
