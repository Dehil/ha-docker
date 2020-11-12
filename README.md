# HomeAssistent Docker Install

## Docker Command Sheet

| Description | Command Line Function |
|-------------|-----------------------|
| Install image | X	docker pull |
| View all Docker images with image ID | docker image ls |
| Delete Docker image | docker image rm |
| Create a Docker container | docker run |
| Start a container | docker start |
| Stop a container | docker stop |
| View all Docker containers | docker container ls -a |
| Delete a Docker container | docker container rm |

## Set ```.env```

Edit config path if needed.

## Start HomeAssistent via ```docker run```

    docker run --init -d --name="home-assistant" -e "TZ=Europ/Berlin" -v ${PATH_CONFIG}:/config --net=host homeassistant/raspberrypi4-homeassistant:stable

## Start HomeAssistent via ```docker-compose```

    version: '3'
    services:
    homeassistant:
        container_name: home-assistant
        image: homeassistant/home-assistant:stable
        volumes:
        - /${PATH_CONFIG}:/config
        environment:
        - TZ=America/New_York
        restart: always
        network_mode: host
