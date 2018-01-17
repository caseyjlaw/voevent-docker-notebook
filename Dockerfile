# IPython notebook running in specific environment
# Test for HotwiredIV
# Running the image allows one to connect from browser via http://localhost:8888.
#
# To use (in directory with Dockerfile):
# docker build -t notebook .
# docker run -d -p 8888:8888 -v ~/jupyter-notebooks/:/ipynb notebook

FROM ubuntu
MAINTAINER caseyjlaw@gmail.com
RUN apt-get update && apt-get -y install \
    libxml2-dev \
    libxslt-dev \
    zlib1g-dev \
    python-dev \
    python-pip \
    ipython \
    python-zmq \
    python-jinja2
RUN pip install --upgrade pip
RUN pip install voevent-parse
RUN pip install comet
RUN pip install ipython --upgrade
RUN pip install jupyter
RUN pip install tornado --upgrade
RUN pip install jsonschema
WORKDIR /ipynb
CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root
EXPOSE 8888
