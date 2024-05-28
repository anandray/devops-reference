# Serverless Glue Deployment

[![serverless](http://public.serverless.com/badges/v3.svg)](http://www.serverless.com)

We use Serverless Framework to do production ready deployments.

## Usage

To install this example to bootstrap your project, run the following command:

```sh
npx serverless install -u https://github.com/nanlabs/devops-reference/tree/main/examples/serverless-glue-deployment -n my-project
```

## Requirements

**You’ll need to have Node 16.13.2 or later on your local development machine** (but it’s not required on the server). You can use [fnm](https://github.com/Schniz/fnm) to easily switch Node versions between different projects.

```sh
fnm use
npm install
```

## Glue Jobs Deployment

To deploy the app to AWS, you'll first need to configure your AWS credentials. There are many ways
to set your credentials, for more information refer to the [AWS documentation](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html).

Once set you can deploy your app using the serverless framework with:

```sh
npm run sls:deploy
```

## Recommended Resources

We recommend the following resources to add local development tools to your project:

- [AWS Glue docker example](https://github.com/nanlabs/devops-reference/tree/main/examples/compose-glue/)
- [VSCode DevContainer example](https://github.com/nanlabs/devops-reference/tree/main/examples/devcontainer/glue/)

Check out the [Complete AWS Glue example app](https://github.com/nanlabs/devops-reference/tree/main/examples/_apps/serverless-glue/) to see
a full example of a complete AWS Glue setup.
