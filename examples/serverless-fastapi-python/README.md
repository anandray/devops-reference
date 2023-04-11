# Serverless FastAPI

Serverless Framework + FastAPI example with the following features:

- production ready deployment
- local development out of the box

## Requirements

**You’ll need to have Node 16.13.2 or later on your local development machine** (but it’s not required on the server). You can use [fnm](https://github.com/Schniz/fnm) to easily switch Node versions between different projects.

```sh
fnm use
npm install
```

**You'll also need to have Python 3.9 installed on your local development machine**. You can use [pyenv](https://github.com/pyenv/pyenv) to easily switch Python versions between different projects.

```sh
pyenv install
pyenv local
```

## Local Development

In order to develop locally, you'll need to install the dependencies and run the application using Serverless Offline.

### Serverless

#### Install Dependencies

```sh
npm run sls requirements install
```

#### Run the Application

This repo has a local development set up that uses the file `.env.local` to configure the local environment.
Run the following command to start the local development server:

```sh
npm run start
```

## Deployment

To deploy the app to AWS, you'll first need to configure your AWS credentials. There are many ways
to set your credentials, for more information refer to the [AWS documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html).

Once set you can deploy your app using the serverless framework with:

```sh
npm run deploy -- --verbose --stage <stage>
```
