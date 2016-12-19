## Lambda Service Skeleton

A skeleton application for deploying microservices on AWS Lambda.

This template aims to reduce the pain inherent in deploying services to AWS Lambda.
By using a virtual environment locally we are able to isolate package resources from our 
global environment and ship them along with our payload to lambda since as of this time a package
manager is not included with the service. 

=====================================


1: Declare required binaries in requirements.txt
2: Build your application in the app/ directory
3: edit every file that ends in variables.tf inside of infrastructure/ 
4: Prepare deploy package 


Prerequesites
------------
- [sudo] pip install virtualenv 
- sudo pip install awscli --ignore-installed six
- Install Terraform https://www.terraform


# Instalation
------------
- clone repo
- edit variable.tf files in infrastructure/
- begin building your application in app/
- set your dependencies in requirements.txt

Commands
------------
- make lambda_package: Prepare the Lambda Deployment package infrastructure/lambda/package.zip
- make deploy_test: Preview changes to AWS Infrastructure
- make deploy: deploy service to AWS (must run lambda_package first)
- make run: run your application locally (no need to be in the venv)


MANUAL DEPLOY
------------
If you do not want to use terraform or prefer the GUI for any other reason simply upload the payload
using the browser and the AWS Console.
