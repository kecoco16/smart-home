run: ## Run home assistant container
run:
	docker compose up --build -d portainer mosquitto zigbee2mqtt duplicati plex homeassistant

logs: ## Logs the instance
logs:
	docker compose logs -f --tail 100

portainer-sh: ## Exec sh terminal
portainer-sh:
	docker compose exec portainer /bin/sh

mosquitto-sh: ## Exec sh terminal
mosquitto-sh:
	docker compose exec mosquitto /bin/sh

zigbee2mqtt-sh: ## Exec sh terminal
zigbee2mqtt-sh:
	docker compose exec zigbee2mqtt /bin/sh

homeassistant-sh: ## Exec sh terminal
homeassistant-sh:
	docker compose exec homeassistant /bin/sh

duplicati-sh: ## Exec sh terminal
duplicati-sh:
	docker compose exec duplicati /bin/sh

plex-sh: ## Exec sh terminal
plex-sh:
	docker compose exec plex /bin/sh

stop: ## Stop the instance
stop:
	docker compose stop

down: ## Down the instance
down:
	docker compose down -v
