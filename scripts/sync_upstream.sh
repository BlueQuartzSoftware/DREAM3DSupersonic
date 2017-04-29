#!/bin/bash

cd ../
cd DREAM3D
git pull --rebase origin develop

cd ../CMP
git pull --rebase origin develop

cd ../SIMPL
git pull --rebase origin develop

cd ../SIMPLView
git pull --rebase origin develop

cd ../Plugins/ITKImageProcessing
git pull --rebase origin develop

cd ../../
git status
