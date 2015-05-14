##IPython notebook running in specific environment

###Test for HotwiredIV

###Running the image allows one to connect from browser via http://192.168.59.103:8888.
###To use do the following in directory with Dockerfile:

```docker build -t notebook .
docker run -d -p 8888:8888 -v ~/jupyter-notebooks/:/ipynb notebook```
 
