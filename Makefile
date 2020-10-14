NAME := network-toolbox
DOCKER_IMAGE := theo01/${NAME}

all: package publish

package:
	@docker build -t ${DOCKER_IMAGE} .

publish:
	@docker push ${DOCKER_IMAGE}

.PHONY: package publish
