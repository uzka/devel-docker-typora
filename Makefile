# docker build -t test .
DOCKER=docker
DOCKERIMAGENAME=uzka/typora

all: $(DOCKERIMAGENAME)

public-key.asc:
	wget https://typora.io/linux/public-key.asc

$(DOCKERIMAGENAME): Dockerfile public-key.asc
	docker build -t $@ .
	mkdir -p $(@D)
	touch $@

distclean:
	rm -fr $(DOCKERIMAGENAME)
	docker rmi $(DOCKERIMAGENAME)
maintainer-clean: distclean
	rm -f public-key.asc

install: all
	cp typora /usr/local/bin/
