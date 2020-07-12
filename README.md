[![CircleCI](https://circleci.com/gh/Welith/udacity-ml-microservice.svg?style=svg)](https://circleci.com/gh/Welith/udacity-ml-microservice)

Udacity - Operationalize a Machine Learning Microservice API


## Project Overview

In this project an app is contenirized using docker and is then deployed with Kubernetes. CircleCi is used to confirm correct deployment.

### Project Setup
There are 3 scripts (.sh) files used in this project (You need to have docker installed [https://docs.docker.com/get-docker/](DOCKER) as well as python, pip and Kubernetes). After cloning the repo `cd` into the app and execute the following: 
1. `./run_docker.sh` runs the container
2. `./make_prediction.sh` then should be run in a separte terminal window. This script makes a request to the container and you should be able to see the JSON data in your main terminal window.
3. `./upload_docker` then deploys the actual image to docker (in this case the script works for my DockerID, change `dockerpath="welith95/ml-predict-price"` with your DockerID.
4. If everything is OK you should see a success message and you can then move on to run `minikube start` to set up your Kubernetes configs.
5. `./run_kubernetes` then creates a pod for you and will execute the needed code to deploy your image. You can now run `./make_prediction.sh` (in a new terminal window) and should see handling log messages for the prediction request.

