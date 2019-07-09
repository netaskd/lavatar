APP ?= lavatar
REPO ?= netaskd

.PHONY:  build tag push

all: build

release: tag push

build:
	@docker build -t ${APP} .

tag:
	@docker tag ${APP} ${REPO}/${APP}
	
push:
	@docker push ${REPO}/${APP}

