FROM jupyter/julia-notebook:x86_64-python-3.11.6

RUN julia install.jl
RUN pip install jupyterlab-git
