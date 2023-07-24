# AWS Cloud Resume Challenge - Backend
In  order to present my skills in cloud infrastrucutre I will use this repo to reformat my reseume while undertaking the [ Cloud Resume Challange](https://cloudresumechallenge.dev/docs/the-challenge/aws/)

The challange lays out 16 steps for completion. This repo CloudResumeBackend will present the componets of the cloud resume that are hidden from users.

1. ###### Certification [Frontend](https://github.com/eacheamp/CloudResumeFrontend)

2. ###### HTML [Frontend](https://github.com/eacheamp/CloudResumeFrontend)

3. ###### CSS [Frontend](https://github.com/eacheamp/CloudResumeFrontend)

4. ###### Static Website [Frontend](https://github.com/eacheamp/CloudResumeFrontend)

5. ###### HTTPS [Frontend](https://github.com/eacheamp/CloudResumeFrontend)

6. ###### DNS [Frontend](https://github.com/eacheamp/CloudResumeFrontend)

 7. Javascript 

    Created a function that fetches the api endpoint, performs a `POST` on the endpoint with `allowed headers` only allowing actions from my cloud resume site.

 8. Database 
    
    A DynamoDB table that has a `Site Key`:`siteStat_id` and `Atrribute`:`visitorCount` that keeps "Count" of the Number of Visitors to the site. It is billed Pay per request(API call) to forgo the need for provisioning.

 9. API 
    
    Used API Gateway httpV2 to integrate my Lambda so whenever the endpoint is "fetched" it invokes the Lambda to update the DynamoDb table.
    
 10. Python

        Used Python to build the Lambda functions in charge of counting site visitors; using boto3 clients to interact with dynamodb.

11. Tests
    
    Python Unittests to make sure the lambda is selecting the correct dynamodb key and it is a positive number.

12. Infrastructure as Code

    All the resources/configs are built in `terraform`

13. Source Control 

    Hosted in github

14. CI/CD [circleci config.yml](https://github.com/eacheamp/CloudResumeFrontend/tree/main/.circleci)
    
    CircleCI config to load `terraform.tfvars` variables and run `terraform` commands to deploy the resources. First runs unittests to check the lambda site visitor counter.

15. ###### CI/CD [circleci config.yml](https://github.com/eacheamp/CloudResumeFrontend/tree/main/.circleci)

    CircleCI config to load `terraform.tfvars` variables and run `terraform` commands to deploy the resources.

16. Blog post
---