FROM golang:1.16.3-buster

ADD https://github.com/soundcloud/ipmi_exporter/releases/download/v1.3.2/ipmi_exporter-v1.3.2.linux-amd64.tar.gz

RUN tar -xvf ipmi_exporter-v1.3.2.linux-amd64.tar.gz
