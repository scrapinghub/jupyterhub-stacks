FROM jupyter/minimal-notebook:f646d2b2a3af


# Arche dependencies 
RUN pip install -U --no-cache-dir arche==0.3.2 && \
    conda install --quiet --yes jupyter_contrib_nbextensions && \
    conda clean -tipsy && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.38 --no-build && \
    jupyter labextension install plotlywidget@0.9.0 --no-build && \
    jupyter labextension install @jupyterlab/plotly-extension@0.18.2 --no-build && \
    jupyter lab build

# Notebook extensions
RUN jupyter nbextension enable --section=tree tree-filter/index && \
    jupyter nbextension enable execute_time/ExecuteTime && \
    jupyter nbextension enable code_font_size/code_font_size && \
    jupyter nbextension enable rubberband/main && \
    jupyter nbextension enable toc2/main && \
    jupyter nbextension enable hide_input/main && \
    jupyter nbextension enable collapsible_headings/main

# Additional tools
RUN pip install -U --no-cache-dir \
    nbgitpuller && \
    conda install --quiet --yes \
    awscli \
    nb_conda_kernels && \
    conda clean -tipsy && \
    echo "envs_dirs:\n  - /home/jovyan/my-conda-envs/" > ~/.condarc && \
    jupyter serverextension enable --py nbgitpuller --sys-prefix
