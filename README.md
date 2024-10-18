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
Run application
export FLASK_APP=app.py
  flask run


Ttest the application by running the make_prediction.sh script
![](https://github.com/thanhtina8/udacityproject2/blob/ccc9b46156296484e73d6632e35e1f464e7d52bf/Screenshots/runtestapplication.png)

![](https://github.com/thanhtina8/udacityproject2/blob/ccc9b46156296484e73d6632e35e1f464e7d52bf/Screenshots/testlocalhost.png)

* Run GitHub Actions

Every push to the repository will trigger a GitHub Action which runs a pipeline to test the code.

![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/githubaction.png)

* Deployment

Create a web app service

```
az webapp up -n udacityproject2 --location eastasia --resource-group azuredevops --sku B1 --os-type "Linux" --runtime "PYTHON:3.12"

```



Deployed Azure App Service



Successful deployment

![](https://github.com/thanhtina8/udacityproject2/blob/main/Screenshots/appurl.png)

* Testing



Execute the script and check the output
```
./make_predict_azure_app.sh     
````


You can check the log via 

```
https://<your-app-name>.scm.azurewebsites.net/api/logs/docker
```

Replace ```<your-app-name>``` with your app name.



## Enhancements

Add Application insights to improve logging and Analysis

## Demo 




