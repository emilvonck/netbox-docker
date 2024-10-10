# Makefile

.PHONY: all start deploy load-data destroy-data stop kill

all: start

start:
	@echo "Starting netbox"
	docker compose up -d

deploy: start
	@echo "Deploy netbox with data"
	@$(MAKE) load-data

load-data:
	@echo "Loading data"
	docker run -it --rm -v $(shell pwd)/provision:$(shell pwd)/provision -w $(shell pwd)/provision hashicorp/terraform:latest init
	docker run -it --rm -v $(shell pwd)/provision:$(shell pwd)/provision -w $(shell pwd)/provision hashicorp/terraform:latest apply --auto-approve

destroy-data:
	@echo "Destroying data"
	docker run -it --rm -v $(shell pwd)/provision:$(shell pwd)/provision -w $(shell pwd)/provision hashicorp/terraform:latest destroy --auto-approve

stop:
	docker compose down

kill:
	docker compose down -v