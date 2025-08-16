DOCKER_COMPOSE=docker compose
CONTAINER_NAME=wg-easy

.PHONY: up down logs peers restart

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

logs:
	$(DOCKER_COMPOSE) logs -f

peers:
	docker exec -it $(CONTAINER_NAME) wg show

restart:
	$(DOCKER_COMPOSE) restart
