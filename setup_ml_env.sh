mkdir Downloads
cd Downloads
apt-get update
apt-get upgrade -y
# For Anaconda installation.
apt-get install wget bzip2 -y
source ~/.bashrc

wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh -O anaconda.sh
bash anaconda.sh
source ~/.bashrc

conda update conda -y
conda update anaconda -y

cd ~
if [ ! -f ~/.jupyter/jupyter_notebook_config.py ]; then
    jupyter notebook --generate-config
fi

echo "c = get_config()
c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8123" >> ~/.jupyter/jupyter_notebook_config.py