#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install curl

sudo true && curl -L https://www.opscode.com/chef/install.sh | sudo bash
