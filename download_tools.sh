#!/bin/bash

mkdir apps


#Download tools
wget https://www.drive5.com/muscle/downloads3.8.31/muscle3.8.31_i86linux64.tar.gz
wget http://www.atgc-montpellier.fr/download/binaries/phyml/PhyML-3.1.zip

#extract filess to apps directory
tar xvfz muscle3.8.31_i86linux64.tar.gz -C apps
unzip PhyML-3.1.zip -d apps

#rename files 
mv apps/muscle3.8.31_i86linux64 apps/muscle
mv apps/PhyML-3.1/PhyML-3.1_linux64 apps/phyml

pip3 install virtualenv --user
virtualenv phylo
source phylo/bin/activate

pip3 install -r requirements.txt


