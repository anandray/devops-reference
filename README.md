<div align="center">
<p>
    <img
        style="width: 200px"
        width="200"
        src="https://avatars.githubusercontent.com/u/4426989?s=200&v=4"
    >
</p>
<h1>DevOps Reference</h1>

[Changelog](#) |
[Contributing](./CONTRIBUTING.md)

</div>
<div align="center">

[![Markdown Lint][markdownlintbadge]][markdownlinturl]
[![Shell Check][shellcheckbadge]][shellcheckurl]
[![Tensorflow Check][tf-checkbadge]][tf-checkurl]
[![License: MIT][licensebadge]][licenseurl]

</div>

This repository contains different infrastructure components, CI/CD pipelines, automation tools
among other resources that are used in different projects here at [NaN Labs](https://www.nanlabs.com/).

- [Applications](#applications)
- [Examples](#examples)
  - [A/B Testing](#ab-testing)
  - [Shell Scripting and Utilities](#shell-scripting-and-utilities)
  - [CI/CD with GitHub Actions](#cicd-with-github-actions)
  - [Containers and Compositions (Docker, Docker Compose, Buildpacks, ...)](#containers-and-compositions-docker-docker-compose-buildpacks-)
  - [DevContainers and Codespaces](#devcontainers-and-codespaces)
  - [Cloud Development Kit](#cloud-development-kit)
  - [Feature Flags](#feature-flags)
  - [Kubernetes](#kubernetes)
  - [Serverless Framework and CloudFormation](#serverless-framework-and-cloudformation)
  - [Terraform](#terraform)
- [Contributing](#contributing)
- [License](#license)
- [Contributors](#contributors)

## Applications

Collection of examples that were created as a composition of different examples that
can be found separately in the [examples](./examples/) directory.
Read more about the examples in the [examples](#examples) section.

- [Complete AWS Glue example app](./examples/_apps/serverless-glue/) - A complete example of an AWS Glue application that uses the [Serverless Framework](https://www.serverless.com/) to deploy the infrastructure and DevContainers and/or Docker Compose to run the application locally with AWS Glue Libs, Spark, Jupyter Notebook, AWS CLI, among other tools. It provides jobs using Python Shell and PySpark.

## Examples

Collection of examples that solve specific problems using small pieces of code.

### A/B Testing

> A/B testing is a method of comparing two versions of a single variable, A and B, to determine which one is more effective.
> Here we provide examples of how to implement A/B testing using different technologies.

- [AWS CloudWatch Evidently](./examples/services/aws-cloudwatch-evidently/) - A complete analysis of the service and a Proof of Concept on how to integrate it with a Node.js application.

### Shell Scripting and Utilities

> Collection of shell utilities and scripts.

- [When to use shell](https://google.github.io/styleguide/shellguide.html#when-to-use-shell) - A guide from Google on when to use shell scripts.
- [Easy Options](./examples/scripts/easy-options/) - Easy options for shell scripts.
- [Bash as a Wrapper Utility](./examples/scripts/bash-as-a-wrapper-utility-basic/) - Bash as a wrapper utility for other languages and tools.
- [Bash as a Wrapper Utility with Easy Options](./examples/scripts/bash-as-a-wrapper-utility-with-easy-options/) - Bash as a wrapper utility for other languages and tools using [Easy Options](./examples/scripts/easy-options/).

### CI/CD with GitHub Actions

- [Actionlint Playground](https://rhysd.github.io/actionlint/): Static checker for GitHub Actions workflow files.
- [Markdown Lint](./.github/workflows/markdownlint.yml). This workflow validates the Markdown files in the repository using the [markdownlint action](https://github.com/marketplace/actions/markdown-lint).
- [Shell Check](./.github/workflows/shellcheck.yml). This workflow validates the shell scripts in the repository using the [shellcheck action](https://github.com/ludeeus/action-shellcheck).
- [Terraform Check](./.github/workflows/tf-check.yml). This workflow validates the Terraform files in the repository using the [terraform action](https://github.com/dflook/terraform-fmt-check).
- [Todo to Issue](./.github/workflows/todo.yml). This workflow scans new commits on the main branch looking for `TODO`s in the code and creates new Github issues.

- [Automation Seed example](https://github.com/nanlabs/automation-seed/tree/main/.github/workflows). This example contains the following workflows:

  - Main Validation (ESLint + Prettier + E2E Tests)
  - Manual Execution with Params (Automated Tests execution)
  - Periodic Test execution and History update
  - Pull Requests validation with DangerJS

- [React Webpack Boilerplate](https://github.com/nanlabs/react-webpack-boilerplate/tree/main/.github/workflows). This example contains the following workflows:
  - Main Validation (ESLint + Prettier + Unit Tests)
  - Pull Requests validation with DangerJS
  - Deployment example with GitHub Pages

### Containers and Compositions (Docker, Docker Compose, Buildpacks, ...)

> Collection of examples that use Docker, Docker Compose, Buildpacks among other tools
> that can be used to run local development environments.
> NOTE: Most of the examples are compatible with other container runtimes like Podman.

- [AWS Glue using Docker and Docker Compose](./examples/docker/glue/) - Dockerfile and docker-compose.yml for AWS Glue development with AWS Glue Libs, Spark, Jupyter Notebook, AWS CLI among other tools.
- [Localstack using Docker and Docker Compose](./examples/docker/localstack/) - Dockerfile and docker-compose.yml to run Localstack locally with all the necessary services. This example also includes a script to create the necessary resources in Localstack. The provided examples are for DynamoDB, S3, SQS and Kinesis.
- [MongoDB + Mongo Express using Docker and Docker Compose](./examples/docker/mongodb/) - Dockerfile and docker-compose.yml to run MongoDB and Mongo Express locally with initialization scripts.
- [Microsoft SQL Server using Docker and Docker Compose](./examples/docker/mssql/) - Dockerfile and docker-compose.yml to run Microsoft SQL Server locally with initialization scripts.
- [AWS Neptune using Docker and Docker Compose](./examples/docker/neptune/) - Dockerfile and docker-compose.yml to run AWS Neptune locally with initialization scripts.
- [PostgreSQL using Docker and Docker Compose](./examples/docker/postgres/) - Dockerfile and docker-compose.yml to run PostgreSQL locally with initialization scripts.
- [Python Buildpack](./examples/buildpacks/python#readme) - Buildpack example for Python applications.
- [Airflow and Spark environment using Docker and Docker Compose](./examples/docker/airflow/) - Dockerfile and docker-compose.yml to run Airflow locally with initialization scripts.

### DevContainers and Codespaces

> Collection of DevContainers that can be used to run local development environments using VSCode
> or Cloud Development environments using GitHub Codespaces.

- [AWS Glue](./examples/devcontainers/glue/) - DevContainer for AWS Glue development. Uses `docker-compose` to run VSCode attached to a container with all the necessary tools to develop AWS Glue jobs such us AWS Glue Libs, Spark, Jupyter Notebook, AWS CLI among other tools.
- [NodeJS](./examples/devcontainers/nodejs/) - DevContainer for NodeJS development. Uses `docker-compose` to run VSCode attached to a container with all the necessary tools to develop NodeJS applications.

### Cloud Development Kit

> TODO

### Feature Flags

- [Feature flags Post](https://www.atlassian.com/continuous-delivery/principles/feature-flags): How to progressively expose your features with feature flags by IAN BUCHANNAN.

### Kubernetes

> Collection of Kubernetes manifests that can be used to run local development environments or
> to deploy applications to a Kubernetes cluster.

- [Ingress](./examples/kubernetes/ingress/) - Ingress example using NGINX Ingress Controller. You can run this example locally using [Minikube](https://minikube.sigs.k8s.io/docs/start/).

### Serverless Framework and CloudFormation

> Collection of Serverless Framework that can be used to run local development environments
> and deploy different resources to the Cloud using Serverless Framework and CloudFormation.

- [AWS AppSync + TypeScript](./examples/serverless/serverless-appsync-nodejs/) - Serverless Framework example to deploy an AWS AppSync API using TypeScript. It also has a local development environment using [Serverless Offline](https://www.serverless.com/plugins/serverless-offline).
- [AWS AppSync + Python](./examples/serverless/serverless-appsync-python/) - Serverless Framework example to deploy an AWS AppSync API using Python. It also has a local development environment using [Serverless Offline](https://www.serverless.com/plugins/serverless-offline).
- [AWS Glue with Python Shell and PySpark Jobs](./examples/serverless/serverless-glue/) - Serverless Framework example to deploy an AWS Glue job using Python Shell and PySpark.
- [Neo4j in EC2](./examples/serverless/serverless-neo4j-ec2/) - Serverless Framework example to deploy a Neo4j instance in EC2.
- [Serverless S3 Local example](./examples/serverless/serverless-s3-local/) - Serverless Framework example to run a lambda function locally using [Serverless S3 Local](https://www.serverless.com/plugins/serverless-s3-local).
- [DocumentDB Cluster](./examples/serverless/serverless-documentdb/) - Serverless Framework example to deploy a DocumentDB cluster with all the necessary resources.
- [RDS Postgres Cluster](./examples/serverless/serverless-rds-postgres/) - Serverless Framework example to deploy a RDS Postgres cluster with all the necessary resources.
- [Serverless Middy](./examples/serverless/serverless-middy/) - Serverless Framework example to deploy a lambda function using [Middy](https://middy.js.org/), the stylish Node.js middleware engine for AWS Lambda.
- [Serverless Middy with Custom Middleware](./examples/serverless/serverless-middy-custom-middleware/) - Serverless Framework example to deploy a lambda function using [Middy](https://middy.js.org/), the stylish Node.js middleware engine for AWS Lambda.

### Terraform

> TODO

## Contributing

- Contributions make the open source community such an amazing place to learn, inspire, and create.
- Any contributions you make are **truly appreciated**.
- Check out our [contribution guidelines](./CONTRIBUTING.md) for more information.

## License

This project is Licensed under the [MIT License](./LICENSE). Please go through the License at least once before making your contribution. </p>

## Contributors

<a href="https://github.com/nanlabs/devops-reference/contributors">
  <img src="https://contrib.rocks/image?repo=nanlabs/devops-reference"/>
</a>

Made with [contributors-img](https://contrib.rocks).

[markdownlintbadge]: https://github.com/nanlabs/devops-reference/actions/workflows/markdownlint.yml/badge.svg
[shellcheckbadge]: https://github.com/nanlabs/devops-reference/actions/workflows/shellcheck.yml/badge.svg
[tf-checkbadge]: https://github.com/nanlabs/devops-reference/actions/workflows/tf-check.yml/badge.svg
[licensebadge]: https://img.shields.io/badge/License-MIT-blue.svg
[markdownlinturl]: https://github.com/nanlabs/devops-reference/actions/workflows/markdownlint.yml
[shellcheckurl]: https://github.com/nanlabs/devops-reference/actions/workflows/shellcheck.yml
[tf-checkurl]: https://github.com/nanlabs/devops-reference/actions/workflows/tf-check.yml
[licenseurl]: https://github.com/nanlabs/devops-reference/blob/main/LICENSE
