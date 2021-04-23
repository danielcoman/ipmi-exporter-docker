FROM golang:1.16.3-buster

WORKDIR /app

ADD https://github.com/soundcloud/ipmi_exporter/releases/download/v1.3.2/ipmi_exporter-v1.3.2.linux-amd64.tar.gz ./

RUN tar -xvf ipmi_exporter-v1.3.2.linux-amd64.tar.gz && \
    rm ipmi_exporter-v1.3.2.linux-amd64.tar.gz

RUN apt-get update && \
    apt-get install -y freeipmi-tools && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean


CMD ["/app/ipmi_exporter-v1.3.2.linux-amd64/ipmi_exporter"]
