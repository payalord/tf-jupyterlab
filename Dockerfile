ARG UBUNTU_VERSION=latest
FROM ubuntu:${UBUNTU_VERSION} AS tf-install
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y python3 python3-pip
# Install tensorflow v2.11.0-rc1 and tensorflow-addons v0.18.0
RUN pip install https://github.com/payalord/tf-docker/releases/download/v1.0.0/tensorflow-2.11.0rc1-cp310-cp310-linux_x86_64.whl
RUN pip install https://github.com/payalord/tf-docker/releases/download/v1.0.0/tensorflow_addons-0.18.0-cp310-cp310-linux_x86_64.whl
# Install additional libraries and jupyterlab
RUN pip install -U \
    matplotlib \
	pandas \
	sklearn \
    jupyterlab
RUN apt-get install -y pandoc
RUN apt-get install -y \
	texlive-xetex \
	texlive-fonts-recommended \
	texlive-plain-generic
RUN apt-get clean
CMD jupyter-lab --notebook-dir=/jupyterlab --ip=0.0.0.0 --no-browser --allow-root