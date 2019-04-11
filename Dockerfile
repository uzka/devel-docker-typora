FROM debian:stable

MAINTAINER Uzka <developeruzka@gmail.com>

ADD /public-key.asc /public-key.asc
RUN apt-get update \
	&& apt-get install -y gnupg2 apt-transport-https \
	&& apt-key add /public-key.asc \
	&& echo 'deb https://typora.io/linux ./' > /etc/apt/sources.list.d/typora.list \
	&& apt-get update \
	&& apt-get install -y typora libgtk-3-0 libxss1 libnss3 libasound2 \
	&& apt-get clean \
	&& rm -fr /var/lib/apt/lists/*

#docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:ro" uzka/typora typora
