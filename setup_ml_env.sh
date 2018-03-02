mkdir Downloads
cd Downloads
apt-get update
apt-get upgrade
# For Anaconda installation.
apt-get install wget bzip2 -y
source ~/.bashrc

wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh -O anaconda.sh
bash anaconda.sh -b -p $HOME/anaconda
export PATH="$HOME/anaconda/bin:$PATH"
source ~/.bashrc

conda update conda
conda update anaconda
