[![Python application test with Github Actions](https://github.com/thanhtina8/udacityproject2/actions/workflows/python-app.yml/badge.svg?branch=main)](https://github.com/thanhtina8/udacityproject2/actions/workflows/python-app.yml)

# Overview

In this project, we will build a Github repository from scratch and create a scaffolding that will assist you in performing both Continuous Integration and Continuous Delivery
   Using Github Actions along with a Makefile, requirements.txt and application code to perform an initial lint, test, and install cycle
   Integrate this project with Azure Pipelines to enable Continuous Delivery to Azure App Service
## Project Plan

* [Trello board](https://trello.com/b/N126gwen/udacity)
* [Spreadsheet](https://github.com/thanhtina8/udacityproject2/blob/main/Udacityproject2.xlsx)

## Architecture

![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/overview.png)

## Instructions
1. Configuration
Set up ssh-key using Azure Cloud Shell
```
ssh-keygen -t rsa 
```
![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/keygen.png)

Clone the repo:
```
git clone git@github.com:thanhtina8/udacityproject2.git
```
![](https://github.com/thanhtina8/udacityproject2/blob/ccc9b46156296484e73d6632e35e1f464e7d52bf/Screenshots/CreateAppService.png)

Create a virtual environment:
```
python3 -m venv venv
```
Activate the virtual environment:
```
source venv/bin/activate
```
Change into the new directory:
```
cd udacityproject2
```
Install dependencies in the virtual environment and run tests:
```
make all
```
![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/installdependencies.png)
Conduct a test run on application

export FLASK_APP=app.py

flask run


![](https://github.com/thanhtina8/udacityproject2/blob/ccc9b46156296484e73d6632e35e1f464e7d52bf/Screenshots/runtestapplication.png)

Test the application by running the make_prediction.sh script


![](https://github.com/thanhtina8/udacityproject2/blob/ccc9b46156296484e73d6632e35e1f464e7d52bf/Screenshots/testlocalhost.png)

2. Run GitHub Actions

Every push to the repository will trigger a GitHub Action which runs a pipeline to test the code.

![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/githubaction.png)

3.Deployment

Create a web app service

```
az webapp up -n udacityproject2 --location eastasia --resource-group azuredevops --sku B1 --os-type "Linux" --runtime "PYTHON:3.12"

```
![]([https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/appurl.png](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/CreateAppService.png))

Set up service connection
![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/service%20connection.png)
Set up the pipeline
![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/pipeline.png)

Deployed Azure App Service
![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/deploymentsuccess.png)

Successful deployment

![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/appurl.png)

4.Testing



Execute the script and check the output
```
./make_predict_azure_app.sh     
````
![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/testingML.png)


You can check the log via 

```
https://udacityproject2.scm.azurewebsites.net/api/logs/docker
```
![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/testinglog.png)





## Enhancements

Add Application insights to improve logging and Analysis

## Demo 
[Youtube](https://youtu.be/4hrLsaU8S70)




