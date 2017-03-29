This is our default Jupyter image for Docker with most frequently needed python packages already installed.
Images are automatically created and uploaded to [Docker Hub](https://hub.docker.com/r/neurology/jupyter/).
To launch the notebook server:

```bash
docker run --rm -it -v $(pwd):/notebooks -p 8888:8888 neurology/jupyter
```
