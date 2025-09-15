FROM jupyter/julia-notebook:x86_64-python-3.11.6

RUN julia -e 'import Pkg; Pkg.add(["JuMP"])'
RUN julia -e 'import Pkg; Pkg.add(["HiGHS"])'
RUN julia -e 'import Pkg; Pkg.add(["Gurobi"])'
RUN pip install jupyterlab-git
