# Tensorflow JupyterLab

This repo is a docker compose setup of Tensorflow with JupyterLab

## What's in the box?

* Tensorflow v2.11.0-rc1
* Tensorflow Addons v0.18.0
* Jupyter Lab
* Python 3 with next additional libraries pre-installed for you:
    * numpy
    * matplotlib
	* pandas
	* sklearn

PDF export support has been fixed by installing necessary libraries.
Still, not all export functions work in JupyterLab.

## Working directory

Directory `jupyterlab` will be mounted into the container `/jupyterlab` and will be set to use as working directory for Jupyter Lab.

## Build or Re-build

You can run docker compose command to build or re-build image: `docker compose build`

## Start a container

`docker-compose up`

## JupyterLab

After container is started, you will see a URL link in the console: `http://127.0.0.1:8888/lab?token=c8de56fa...`
This is the link you need to navigate to, in your browser, to start your work with JupyterLab.
