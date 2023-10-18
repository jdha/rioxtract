FROM continuumio/miniconda3

WORKDIR /src/rioxtract

COPY environment.yml /src/rioxtract/

RUN conda install -c conda-forge gcc python=3.10 \
    && conda env update -n base -f environment.yml

COPY . /src/rioxtract

RUN pip install --no-deps -e .
