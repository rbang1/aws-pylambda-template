# Template project for Python based AWS Lambda Function

Simplifies build and deploy of lambda functions.

## Make targets

  * `make venv` - creates your local virtualenv inside that folder, all targets are dependent on it - so you don't need to call it explicitly
  * `make deploy-prod` - will create/update lambda function as defined in config-prod.yaml file
  * `make deploy-test` - will create/update test version of lambda function as defined in config-test.yaml (to use as staging environment equivalent)
  * `make test` - will run lambda function locally using event.json as the payload

## Dependency management

All dependencies defined in requirements.txt are packaged and deployed (including any downstream dependencies) - you can inspect the package uploaded under dist folder.

  * Define runtime dependencies in requirements.txt
  * Define build/test dependencies in requirements-local.txt. Any dependencies defined here is not included in the lambda package.
