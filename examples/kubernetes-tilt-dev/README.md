# Tilt + Minikube Development Environment 🚀

Welcome to a seamless, efficient, and developer-friendly Kubernetes development experience! This repository combines the power of [Tilt](https://tilt.dev/) and [Minikube](https://minikube.sigs.k8s.io/) to supercharge your microservices development. Say goodbye to complex configurations and hello to streamlined development!

## Why This Demo Matters

This demo isn't just about showcasing two impressive microservices. It's about empowering developers to harness the agility of Kubernetes without the steep learning curve. We've crafted an environment that's easy to set up, intuitive to navigate, and accelerates your development workflow.

## What's Inside? 🏗️

In this repository, you'll find two remarkable microservices waiting for you:

1. **Node.js with Nest.js** 🟢
   A beautifully crafted Nest.js API, complete with Swagger integration for effortless exploration.

2. **Python with FastAPI** 🐍
   Dive into FastAPI's high-performance world! Another RESTful API flaunting a Swagger interface for swift exploration.

### Directory Structure 📁

```txt
.
├── apps
│   ├── node-nestjs-app
│   │   ├── ...
│   │   ├── Dockerfile
│   │   └── README.md
│   └── python-fastapi-app
│       ├── ...
│       ├── Dockerfile
│       └── README.md
├── k8s
│   ├── node-nestjs-app
│   │   ├── deployment.yml
│   │   └── service.yml
│   ├── python-fastapi-app
│   │   ├── deployment.yml
│   │   └── service.yml
│   ├── ingress.yml
│   └── namespaces.yml
├── README.md
└── Tiltfile
```

## Getting Started 🚦

1. **Clone This Repository**
2. **Install Minikube**: Follow [Minikube's installation guide](https://minikube.sigs.k8s.io/docs/start/) if you haven't already.
3. **Install Tilt**: Refer to [Tilt's installation guide](https://docs.tilt.dev/install.html).

### Starting Minikube and Tilt

```sh
minikube start
tilt up
```

Once initiated, visit [http://localhost:10350/](http://localhost:10350/) to explore the Tilt dashboard.

### Enable Ingress and Tunnel

To access your microservices, you'll need to enable Ingress and tunnel to your cluster. Run the following commands to do so:

```sh
minikube addons enable ingress
minikube tunnel
```

## Explore the Microservices

Use the Tilt dashboard to explore your microservices, view logs, and more. Click the `View` button next to each service to access its Swagger UI.

## Understanding Kubernetes ⚙️

### Ingress

The `k8s/ingress.yml` routes traffic to the microservices. Enable it with:

### Namespaces

Organize microservices using the `k8s/namespaces.yml` file, making management a breeze.

### Microservices

Each microservice in `k8s/` has a Deployment and Service resource, handling deployment and exposure.

## Tiltfile 📜

The `Tiltfile` configures Tilt. Customize your dev environment and add more microservices here.
