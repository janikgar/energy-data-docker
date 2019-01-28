# Energy Consumption - Example JupyterLab Docker environment
This is a Docker image build for building a JupyterLab environment.

## Data
A sample dataset for use with this is the Hourly Energy Consumption dataset available [here](https://www.kaggle.com/robikscube/hourly-energy-consumption) from Kaggle. You will need to download this to the same directory of the Dockerfile to build.

## Steps to build
0. Download dataset (see above) and install Docker (if needed).
1. Build the Dockerfile
```
$ docker build . -t energy-dataset
```
2. Run the Docker container.
```
$ docker run -it -p 8888:8888 energy-data
```
3. Copy and paste the token in the command line.
4. Open a browser on your current system to `localhost:8888?token=<token>`, with `<token>` being the string you copied from the command line.
4b. Alternatively, you can navigate to `localhost:8888` and then paste the token in the password slot and click 'Login'.
5. Navigate Jupyter Lab to `/data`, open a new notebook, and begin analyzing!

## Todo
- Add JupyterHub to allow Login
- Deploy to Kubernetes for scaling (and/or creating worker nodes)
- Add NoSQL/RDBMS database and/or persistent storage for persisting data