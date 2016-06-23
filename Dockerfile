FROM ubuntu:xenial
MAINTAINER Ingo Müller <ingo.mueller@inf.ethz.ch>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        software-properties-common && \
    add-apt-repository ppa:jonathonf/texlive-2016 && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        make \
        texlive-full \
        python-matplotlib \
        python-nose \
        python-numpy \
        python-pandas \
        python-pygments \
        python-scipy \
        python-sympy \
        latexmk \
        biber \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
