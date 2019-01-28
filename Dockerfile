FROM alpine:latest

COPY hourly-energy-consumption.zip /
RUN apk update --no-cache && \
    apk add python3 build-base python3-dev musl-dev snappy-dev --no-cache && \
    mkdir /data && \
    unzip hourly-energy-consumption.zip -d /data && \
    python3 -m pip install --upgrade pip && \
    ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN pip install numpy && \
    pip install pandas 

RUN pip install jupyterlab jupyter_server

RUN rm hourly-energy-consumption.zip

ENTRYPOINT ["jupyter", "lab", "--ip", "0.0.0.0", "--port", "8888", "--allow-root"]