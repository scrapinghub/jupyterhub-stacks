[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/manycoding/jupyterhub-stacks/master)

# JupyterHub Stacks

JupyterHub Stacks are a set of ready-to-run Docker images containing Jupyter applications, meant to be used as environments in cluster set with [Zero to JupyterHub with Kubernetes](https://z2jh.jupyter.org)

## Creating an image

* Add an image with a proper parent based on https://github.com/jupyter/docker-stacks notebooks, e.g. `jupyter/minimal-notebook:45b8529a6bfc`
    See `/arche-notebook` for details or [Jupyter Community Stacks](https://jupyter-docker-stacks.readthedocs.io/en/latest/contributing/stacks.html)
