# Infrastructure

This project is managed by [serverless Framework](https://www.serverless.com/).

All project configuration is store on `serverless.yaml` file.

All operations are based on [serverless Framework](https://www.serverless.com/) best practices.
You can grab further details at https://www.serverless.com/framework/docs/providers/aws/guide/


## Stages

* `dev`: This is the default stage used for development purpose; default value.
* `prod`: for production ;-)
* `<any>`: for any other considerations

## Deploy

Based on `serverless` :

`npm run infra:deploy`

for non default stage : `npm run infra:deploy -- -s <stage>`

## Logging

Based on `serverless` :

`npm run infra:logs:cropImage`

When you need more capabilities, you can directly use AWS CloudWatch service (console or API)

## Monitoring

Based on `serverless` :

`npm run infra:metrics:cropImage`

When you need more capabilities, you can directly use AWS CloudWatch service (console or API)

## Alerting Rules

TBD

## Clean up

Based on `serverless` :

`serverless remove -v`
