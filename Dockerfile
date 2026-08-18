FROM docker.io/zmkfirmware/zmk-build-arm:stable

WORKDIR /app

COPY config/west.yml config/west.yml

RUN west init -l config \
    && west update --fetch-opt=--filter=tree:0 \
    && west zephyr-export

COPY --chmod=0755 west-build.sh ./

CMD ["./west-build.sh"]
