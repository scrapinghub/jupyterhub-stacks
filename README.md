[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/scrapinghub/arche-notebook/master)
[![Build Status](https://travis-ci.org/scrapinghub/jupyterhub-stacks.svg?branch=master)](https://travis-ci.com/scrapinghub/jupyterhub-stacks)
[![DockerHub](https://images.microbadger.com/badges/version/scrapinghub/arche-notebook.svg)](https://microbadger.com/images/scrapinghub/arche-notebook "Recent tag/version of scrapinghub/arche-notebook")


# JupyterHub Stacks

JupyterHub Stacks are a set of ready-to-run Docker images containing Jupyter applications, meant to be used as environments in cluster set with [Zero to JupyterHub with Kubernetes](https://z2jh.jupyter.org)

## Creating an image

* Add an image with a proper parent based on https://github.com/jupyter/docker-stacks notebooks, e.g. `jupyter/minimal-notebook:45b8529a6bfc`
    See `/arche-notebook` for details or [Jupyter Community Stacks](https://jupyter-docker-stacks.readthedocs.io/en/latest/contributing/stacks.html)
