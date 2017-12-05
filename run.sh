docker run -d \
    -p 1884:1883 \
	-p 9002:9001 \
    -v ~/git/docker-mosquitto/:/opt/mosquitto \
    -v ~/git//docker-mosquitto/log:/var/log/mosquitto \
    --name=mosquitto-source \
    docker-mosquitto-source
