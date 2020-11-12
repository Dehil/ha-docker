docker run --init -d --name="home-assistant" -e "TZ=Europ/Berlin" -v ${PATH_CONFIG}:/config --net=host homeassistant/raspberrypi4-homeassistant:stable
