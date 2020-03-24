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

echo "Do you want to use linux utilities for getting more information? (yes or no)"
read yesno

case $yesno in

        [yY] | [yY][Ee][Ss] )
                iftop
                iotop
                htop
                ;;

        [nN] | [n|N][O|o] )
                echo "Nothing executes";
                exit 1
                ;;
        *) echo "Invalid input, please type yes or no"
            ;;
esac
echo "Thank you for using my script"
