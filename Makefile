USER := $(shell /usr/bin/id -u)
APP := react-ts
APPWD := /app

up:## Build the app container image (if it doesn't exists) and runs the containers
	docker-compose -f docker/dev/docker-compose.yaml up

upBuild:## Rebuild the app container image and runs the containers
	docker-compose -f docker/dev/docker-compose.yaml up --build

down:## Stop and remove the containers that was created by 'make up' command
	docker-compose -f docker/dev/docker-compose.yaml down

install:## Runs 'yarn install'
	docker exec -it $(APP) sh -c "(cd $(APPWD) && yarn install)"

build:## Runs 'npm run build'
	docker exec -it $(APP) sh -c "(cd $(APPWD) && yarn build)"

grant:## Grant permissions to all files (Use it if you have access permissions issues)
	bash -c "sudo chmod -R a+rw . && sudo chown -R $(USER):$(USER) ."

access:## Run an interactive bash session on the container
	docker exec -it $(APP) bash