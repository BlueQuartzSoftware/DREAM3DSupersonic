#!/bin/bash


BRANCH="develop"

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'

function printHeader()
{
  echo -e "${GREEN}#------------------------------------------------------------------------"
  echo -e "${RED} $1 ${NC}"
}


cd ../
cd DREAM3D
printHeader DREAM3D
git pull --rebase origin develop

cd ../CMP
printHeader CMP
git pull --rebase origin develop

cd ../SIMPL
printHeader SIMPL
git pull --rebase origin develop

cd ../SIMPLView
printHeader SIMPLView
git pull --rebase origin develop

cd ../Plugins
PLUGINS=`ls`
echo $PLUGINS
for P in $PLUGINS; do
    if [ -d "$P" ]; then
        printHeader $P
        cd $P
        git pull --rebase origin develop
        cd ../
    fi

done