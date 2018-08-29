all: folders permissions

folders:
	sudo mkdir -p ./grafana/data ./grafana/conf ./influxdb/conf
permissions:
	sudo chown -R 472:472 ./grafana
nofolders:
	sudo rm -rf ./grafana ./influxdb
