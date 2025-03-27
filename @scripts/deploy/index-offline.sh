#!/bin/bash

cd /home/rsp/Space/development/rsproj/@scripts;

#sudo deploy/removeDevelopmentPackages.sh
#sudo deploy/uninstallUnecessaryPackages.sh
#sudo deploy/reinstallLikelyBrokenPackages.sh

sudo deploy/removeUnusedDesktopFiles.sh
sudo deploy/removeResidualSetupGarbage.sh

sudo deploy/cleanVarDirectory-offline.sh
sudo deploy/deepSystemCleanup-offline.sh
sudo deploy/finnishClean-offline.sh

exit 0;
