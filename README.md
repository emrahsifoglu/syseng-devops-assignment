### Prerequisite

- Pyhton 3.x https://www.python.org/ 
- Container runtime ([Docker Deskop](https://www.docker.com/products/docker-desktop/), [Podman Deskop](https://podman-desktop.io/))
- Kubernetes cluster ([Minikube](https://minikube.sigs.k8s.io/docs/start/#what-youll-need), [Rancher Desktop](https://docs.rancherdesktop.io/getting-started/installation/), [K3s](https://docs.k3s.io/installation))

<br/>

### How to install

Run `make lock` to generate Pipfile.lock

Run `make install` to install dependencies

<br/>

## How to run (dev)

Run `make dev` to serve (demo) Flash app on http://localhost:5001/.

<br/>

## How to build

Run `make requirements` to generate the requirements.txt

Run `docker-compose build` to build images. 

<br/>

## How to run

Run `docker-compose up -d` to run the app, MySQL and Adminer on the background.

Now you can also access http://localhost:8080/ on your browser. 

Userame is *root* and password is *password*.

You can observe that database *syseng-devops-assignment* has been created.

![Tables](/images/tables.png)

<br/>

### Resources
- https://pipenv-fork.readthedocs.io/en/latest/basics.html
- https://pipenv-fork.readthedocs.io/en/latest/advanced.html
- https://medium.com/geekculture/setting-up-python-environment-in-macos-using-pyenv-and-pipenv-116293da8e72
- https://medium.com/analytics-vidhya/docker-docker-compose-flask-app-8527356aacd5
- https://onexlab-io.medium.com/apple-m1-chip-no-matching-manifest-for-linux-arm64-v8-docker-mysql-5142060a9309
- https://roytuts.com/python-flask-online-visitor-tracking-system/
- https://www.youtube.com/watch?v=bi0cKgmRuiA
- https://www.youtube.com/watch?v=SdTzwYmsgoU
- https://www.tutorialspoint.com/python-program-to-get-first-and-last-elements-from-a-tuple
