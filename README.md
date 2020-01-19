# Faiss Docker

Dockerfile for [Faiss](https://github.com/facebookresearch/faiss).


## Getting started

Docker images are available on [Docker Hub](https://hub.docker.com/r/plippe/faiss-docker/).

```sh
docker build \
    --tag plippe/faiss-docker:[FAISS_RELEASE] \
    https://github.com/facebookresearch/faiss.git#v[FAISS_RELEASE]
```
