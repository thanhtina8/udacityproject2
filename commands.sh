#!/usr/bin/env bash

# deploy the app as an app service
az webapp up -n udacityproject2 --location eastasia --resource-group azuredevops --sku B1 --os-type "Linux" --runtime "PYTHON:3.12"

#clone the repo
git clone https://github.com/thanhtina8/udacityproject2.git

#switch to directory
cd udacityproject2

#setup venv
python3 -m venv venv
source venv/bin/activate

#build project
make all

#deploy webapp
az webapp up -n udacityproject2 -g azuredevops
