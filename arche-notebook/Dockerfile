FROM jupyter/minimal-notebook

# Additional tools
RUN pip install -U --no-cache-dir \
    nbgitpuller \
    pandas-profiling \
    cufflinks && \
    conda install --quiet --yes -c conda-forge \
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
RUN pip install -U --no-cache-dir git+https://github.com/scrapinghub/arche@75b63269a7f73bbca6055349c8ad3fae6a1713b7#egg=arche && \
    conda install --quiet --yes jupyter_contrib_nbextensions && \
    conda clean -tipsy && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.38.1 --no-build && \
    jupyter labextension install plotlywidget@0.11.0 --no-build && \
    jupyter labextension install @jupyterlab/plotly-extension@0.18.2 --no-build && \
    jupyter labextension install jupyter-matplotlib && \
    jupyter lab build

# Notebook extensions
RUN jupyter nbextension enable --section=tree tree-filter/index && \
    jupyter nbextension enable execute_time/ExecuteTime && \
    jupyter nbextension enable code_font_size/code_font_size && \
    jupyter nbextension enable rubberband/main && \
    jupyter nbextension enable toc2/main && \
    jupyter nbextension enable hide_input/main && \
    jupyter nbextension enable collapsible_headings/main
