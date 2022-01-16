include docker/.env

BUILD_PRINT = \e[1;34mSTEP: \e[0m

#-----------------------------------------------------------------------------
# Basic commands
#-----------------------------------------------------------------------------

build-services:
	@ echo -e '$(BUILD_PRINT)Building the containers'
	@ docker-compose --file docker/docker-compose.yml --env-file .env build

start-services:
	@ echo -e '$(BUILD_PRINT) Starting the containers'
	@ docker-compose --file docker/docker-compose.yml --env-file .env up -d

stop-services:
	@ echo -e '$(BUILD_PRINT) Stopping the containers'
	@ docker-compose --file docker/docker-compose.yml --env-file .env stop
