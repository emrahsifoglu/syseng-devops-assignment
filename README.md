### Prerequisite

- Pyhton 3.x https://www.python.org/ 
- Container runtime ([Docker Deskop](https://www.docker.com/products/docker-desktop/), [Podman Deskop](https://podman-desktop.io/))
- Kubernetes cluster ([Minikube](https://minikube.sigs.k8s.io/docs/start/#what-youll-need), [Rancher Desktop](https://docs.rancherdesktop.io/getting-started/installation/), [K3s](https://docs.k3s.io/installation))

<br/>

### How to install

Run `make lock` to generate Pipfile.lock

Run `make install` to install dependencies

<br/>

## How to run

Run `make serve` to serve (demo) Flash app on port 5001

<br/>

## How to build

Run `make requirements` to generate the requirements.txt

Run `docker-compose up --build` to build and run the Flask app on port 5001

<br/>

### Resources
- https://pipenv-fork.readthedocs.io/en/latest/basics.html
- https://pipenv-fork.readthedocs.io/en/latest/advanced.html
- https://medium.com/geekculture/setting-up-python-environment-in-macos-using-pyenv-and-pipenv-116293da8e72
- https://medium.com/analytics-vidhya/docker-docker-compose-flask-app-8527356aacd5
- https://www.youtube.com/watch?v=bi0cKgmRuiA
