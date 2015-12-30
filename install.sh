#!/bin/bash

sudo apt-get install nautilus-scripts-manager nautilus-script-manager nautilus-open-terminal 

mkdir -p ~/.gnome2/nautilus-scripts
ln -sf $(pwd)/scripts/*.sh ~/.gnome2/nautilus-scripts
