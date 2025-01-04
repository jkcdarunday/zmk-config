FROM docker.io/zmkfirmware/zmk-build-arm:stable

WORKDIR /app

COPY config/west.yml config/west.yml

RUN west init -l config
RUN west update
RUN west zephyr-export

COPY west-build.sh ./

CMD ["./west-build.sh"]
