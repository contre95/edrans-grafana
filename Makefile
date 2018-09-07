all: permissions magic grafana

permissions:
	sudo chown -R 472:472 ./grafana
magic:
	sudo docker-compose up -d
logs:
	sudo docker-compose logs
down:
	sudo docker-compose down
grafana: grafana-plugin grafana-api-key

grafana-plugin:
	sudo docker container exec -it grafana grafana-cli plugins install raintank-worldping-app
grafana-api-key:
	curl -X POST -H "Content-Type: application/json" -d '{"name":"edransAPIKeyCurl", "role": "Admin"}' http://admin:admin@localhost:3000/api/auth/keys
