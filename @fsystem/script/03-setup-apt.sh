WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$WRAPPER"`"

cd $HERE;

echo Setting up apt-get config...

cd ..
cd src
cd etc.apt

echo Removing current configs...

rm -rf /etc/apt/keyrings
rm -rf /etc/apt/sources.list
rm -rf /etc/apt/preferences.d   
rm -rf /etc/apt/sources.list.d

echo Spreading source configs...

cp -rf keyrings /etc/apt/keyrings
rm -rf sources.list /etc/apt/sources.list
cp -rf preferences.d /etc/apt/preferences.d   
cp -rf sources.list.d /etc/apt/sources.list.d

sleep 3;

echo Updating and Upgrading apt-get...

apt-get update -y;
apt-get upgrade -y;

exit 0

