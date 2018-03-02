mkdir Downloads
cd Downloads
apt-get update
apt-get upgrade -y
# For Anaconda installation.
apt-get install wget bzip2 -y
source ~/.bashrc

wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh -O anaconda.sh
bash anaconda.sh

conda update conda
conda update anaconda
