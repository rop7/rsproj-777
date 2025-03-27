WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$WRAPPER"`"

cd $HERE;

echo Setting up apt-get config...

cd ..
cd src

echo Removing current skel config...

sudo rm -rf /etc/skel/*

echo Spreading source skel config...

sudo cp -rf * /etc/skel

exit 0

