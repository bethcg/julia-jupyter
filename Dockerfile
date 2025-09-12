FROM jupyter/julia-notebook:x86_64-python-3.11.6

USER root

RUN apt-get install wget
RUN sudo apt-get update
RUN sudo apt-get install jupyter-git
