FROM jupyter/minimal-notebook

# Additional tools
RUN pip install -U --no-cache-dir \
    nbgitpuller \
    pandas-profiling \
    cufflinks && \
    conda install --quiet --yes -c conda-forge \
    nb_black \
    ipywidgets==7.4.2 \
    matplotlib \
    ipympl \
    awscli \
    s3fs \
    gcsfs \
    pyarrow \
    memory_profiler \
    nb_conda_kernels && \
    conda clean -tipsy && \
    echo "envs_dirs:\n  - /home/jovyan/my-conda-envs/" > ~/.condarc && \
    jupyter serverextension enable --py nbgitpuller --sys-prefix

# Arche dependencies
# plotly deps https://github.com/plotly/plotly.py
RUN pip install -U --no-cache-dir git+https://github.com/scrapinghub/arche@76d923c5b7e1bad8d8f6e09a9a2fc517268d00b0#egg=arche && \
    conda install --quiet --yes jupyter_contrib_nbextensions && \
    conda clean -tipsy && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.38.1 --no-build && \
    jupyter labextension install plotlywidget@0.11.0 --no-build && \
    jupyter labextension install @jupyterlab/plotly-extension@0.18.2 --no-build && \
    jupyter labextension install jupyter-matplotlib --no-build && \
    jupyter lab build

# Notebook extensions
RUN jupyter nbextension enable --section=tree tree-filter/index && \
    jupyter nbextension enable execute_time/ExecuteTime && \
    jupyter nbextension enable code_font_size/code_font_size && \
    jupyter nbextension enable rubberband/main && \
    jupyter nbextension enable toc2/main && \
    jupyter nbextension enable hide_input/main && \
    jupyter nbextension enable collapsible_headings/main
