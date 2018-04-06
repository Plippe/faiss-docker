.PHONY: build release
.DEFAULT_GOAL := build

DOCKER_IMAGE := plippe/faiss
FAISS_VERSION := 1.2.1

build:
	docker build \
		--build-arg IMAGE=ubuntu:16.04 \
		--build-arg FAISS_CPU_OR_GPU=cpu \
		--build-arg FAISS_VERSION=$(FAISS_VERSION) \
		--tag $(DOCKER_IMAGE):$(FAISS_VERSION)-cpu .

	docker build \
		--build-arg IMAGE=nvidia/cuda:8.0-runtime-ubuntu16.04 \
		--build-arg FAISS_CPU_OR_GPU=gpu \
		--build-arg FAISS_VERSION=$(FAISS_VERSION) \
		--tag $(DOCKER_IMAGE):$(FAISS_VERSION)-gpu .

release:
	docker push $(DOCKER_IMAGE):$(FAISS_VERSION)-cpu
	docker push $(DOCKER_IMAGE):$(FAISS_VERSION)-gpu