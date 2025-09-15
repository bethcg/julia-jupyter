FROM jupyter/julia-notebook:x86_64-python-3.11.6

RUN /bin/sh -c julia -e 'import Pkg; Pkg.add(["JuMP","HiGHS","gurobi"])'
RUN pip install jupyterlab-git
