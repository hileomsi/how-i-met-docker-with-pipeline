# how-i-met-docker-with-pipeline


##### Build Image

- Inside `api` folder
- ```docker build . -t hileomsi/api```


##### Run Image

- ```docker run -d -p 4000:4000 hileomsi/api```


##### Setup AWS CLI Credentials

Use AWS CLI Config comand
- ```aws configure```

Or Set the following env vars
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

##### Upload Docker Image to ECR (Elastic Container Registry)

Login AWS Account > Enter ECR page

Create Repository

Create Lifecycle Policy > Select `Match criteria` > `Image count more than`

Setup Docker login

```
aws ecr get-login-password --region us-east-1 | docker login --username <USERNAME> --password-stdin <AWS_ACCOUNT_NUMBER>.dkr.ecr.us-east-1.amazonaws.com
```

Build Docker image

```
docker build -t hileomsi/api:<VERSION> .
```

Create remote tag for image

```
docker tag hileomsi/api:<VERSION> <AWS_ACCOUNT_NUMBER>.dkr.ecr.us-east-1.amazonaws.com/hileomsi/api:<VERSION>
```

Push Docker image for remote repository

```
docker push <AWS_ACCOUNT_NUMBER>.dkr.ecr.us-east-1.amazonaws.com/hileomsi/api:latest
```

##### Setup Secrets by Env

Enter `Repository` page > `Settings` tab > `Environments` tab > Create your environment > Create you secrets


### Brainstorm
  base extends node:16 (node_module|nodejs) : hash(yarn.lock)
  application extends base (copy all files of application)