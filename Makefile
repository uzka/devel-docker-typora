#  Copyright 2019 Uzka
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

# docker build -t test .
DOCKER=docker
DOCKERIMAGENAME=uzka/typora
DOCKERIMAGENAMEDIR=uzka/

all: $(DOCKERIMAGENAME)

public-key.asc:
	wget https://typora.io/linux/public-key.asc

$(DOCKERIMAGENAME): Dockerfile public-key.asc
	docker build -t $@ .
	mkdir -p $(DOCKERIMAGENAMEDIR)
	touch $@

download:
	docker pull $(DOCKERIMAGENAME)
	mkdir -p $(DOCKERIMAGENAMEDIR)
	touch $(DOCKERIMAGENAME)

distclean:
	rm -fr $(DOCKERIMAGENAME)
	docker rmi $(DOCKERIMAGENAME)
maintainer-clean: distclean
	rm -f public-key.asc

install: all
	cp typora /usr/local/bin/
