# Installation - for Ubuntu based system
if [ -x "$(command -v apt-get)" ]
then
    echo "Updating apt packages ..."
    sudo apt-get update -y > setup.log
    echo "Installing PYTHON3 ..."
    sudo apt-get -y install python3 > setup.log
    sudo apt-get -y install python3-pip >> setup.log
    echo "Installing additional components for Python3 ..."
    sudo apt-get -y install gcc python3-dev >> setup.log
    echo "Installing Linux monitoring utilities ..."
    sudo apt-get -y install iftop htop iotop >> setup.log
fi

# Installation - for CentOs based system
if [ -x "$(command -v yum)" ]
then
    echo "Updating yum packages"
    sudo yum update -y > setup.log
    echo "Installing PYTHON3 ..."
    sudo yum -y install python3 > setup.log
    sudo yum -y install python3-pip >> setup.log
    echo "Installing additional components for Python3 ..."
    sudo yum -y install gcc python3-devel >> setup.log
    echo "Installing Linux monitoring utilities ..."
    sudo yum -y install iftop htop iotop >> setup.log
fi

echo "Installing Python monitoring library psutil ..."
sudo pip3 install psutil
echo "Running Program ..."
python3 get_os_info.py
