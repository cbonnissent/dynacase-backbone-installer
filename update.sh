#!/usr/bin/env bash

bower install "backbone"
PACKAGE_VERSION=$(bower info backbone version | tail -n 1 | cut -d "'" -f 2)
cd ./bower_components
zip -r "../backbone-$PACKAGE_VERSION.zip" backbone/
cd ..
scp "backbone-$PACKAGE_VERSION.zip" distrib@ftp.anakeen.com:/share/ftp/third-party/
echo $PACKAGE_VERSION > VERSION