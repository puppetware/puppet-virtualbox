
sudo puppet module list | grep 'skoblenick-virtualbox'

if [ $? -ne 0 ]; then
    sudo puppet module install skoblenick/virtualbox
else
    echo "Module already installed: skoblenick/virtualbox"
fi