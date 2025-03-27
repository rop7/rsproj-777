WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$WRAPPER"`"

cd $HERE;

echo Setting up os-release file on /etc...

cd ..
cd src

echo Removing current os-release file ...

sudo rm -rf /etc/os-release

echo Spreading source os-release file...

sudo cp -rf etc.os-release /etc/os-release
sudo cat /etc/os-release;

sleep 3;

echo Updating and Upgrading apt-get...

sudo apt-get update -y;
sudo apt-get upgrade -y;

exit 0

