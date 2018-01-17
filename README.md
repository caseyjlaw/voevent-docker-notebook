### IPython notebook running in specific environment

### To use do the following in directory with Dockerfile:

```
docker build -t notebook .
docker run -d -p 8888:8888 -v ~/jupyter-notebooks/:/ipynb notebook
```

Then connect from browser by loading http://localhost:8888.
