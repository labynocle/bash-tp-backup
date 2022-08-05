.PHONY: clean list help basic-checks set-env deploy
.DEFAULT_GOAL := help

SHELL                      = /bin/bash

CONTAINER = bash


################################################################################

##
## Misc commands
## -----
##

list: ## Generate basic list of all targets
	@grep '^[^\.#[:space:]].*:' Makefile | \
		grep -v "=" | \
		cut -d':' -f1

help: ## Makefile help
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' | \
		sed -e 's/\[32m##/[33m/'

##
## TP commands
## -----
##

tp-build: ## Build the TP's docker images
	@cd docker && \
	docker-compose build

tp-start: tp-build ## Launch the TP's stack
	@cd docker && \
	docker-compose \
		up \
			-d

tp-stop: ## Stop the TP's stack
	@cd docker && \
	docker-compose \
		down

tp-clean: tp-stop ## Remove the the TP's docker images
	@cd docker && \
	docker-compose \
		rm \
			--force

tp-script: ## Launch script (with var SCRIPT) in specified container (with var CONTAINER)
	@docker exec -it ${CONTAINER} bash /data/${SCRIPT}

tp-container-inside: ## Enter in the specified container (with var CONTAINER)
	@docker exec -it ${CONTAINER} bash

tp-initdb: ## Init the database
	@docker exec -i bash mysql -uroot -pmySecretPassWord -h mysql < ./docker/bash/sql/exemple01.sql
	@docker exec -i bash mysql -uroot -pmySecretPassWord -h mysql < ./docker/bash/sql/exemple02.sql
	@echo "Import databases done !!"

tp-dropdb: ## Drop the database
	@docker exec -i bash mysql -uroot -pmySecretPassWord -h mysql -e "drop database exemple01;"
	@docker exec -i bash mysql -uroot -pmySecretPassWord -h mysql -e "drop database exemple02;"
	@echo "Drop databases done !!"
