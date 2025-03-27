#/bin/bash

echo "Reinstalling possible broken packages"

   sudo apt-get install network-manager-gnome -y
   sudo apt-get install libnma0 -y
   sudo apt-get install firmware-iwlwifi -y
   sudo apt-get reinstall -y wayland*
   sudo apt-get reinstall -y libxkbcommon-*
   sudo apt-get reinstall qt6-wayland* -y
   sudo apt-get reinstall grub2 grub2-common -y

exit 0;