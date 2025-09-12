FROM jupyter/julia-notebook:x86_64-python-3.11.6

USER root

RUN apt-get install wget
RUN sudo apt-get update

# install the python dependencies
COPY environment.yml /tmp/
RUN mamba env update -q -f /tmp/environment.yml && \
    mamba clean -y --all
