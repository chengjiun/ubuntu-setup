#!/bin/bash
sudo apt update

# mkdir Softwares
sudo apt-get install mdadm lvm2 -y
sudo apt install net-tools openssh-server vim build-essential curl -y
sudo apt-get install iotop htop atop iperf powertop powerstats lm-sensors hardinfo mlocate  -y
sudo apt-get install inxi hwinfo pydf -y # see https://www.binarytides.com/linux-command-check-disk-partitions/
sudo apt-get install tmux  at -y
sudo apt-get install axel aria2 -y # fast wget
sudo apt install clang -y
sudo apt-get install git wget nmap cmake cmake-gui pigz pbzip2 -y
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
sudo apt install libjpeg9 libcap-dev libopenblas-dev libnuma-dev autoconf build-essential ca-certificates libgoogle-glog-dev libhiredis-dev libiomp-dev libleveldb-dev liblmdb-dev libopencv-dev libpthread-stubs0-dev libsnappy-dev libprotobuf-dev protobuf-compiler libomp-dev -y
sudo apt-get install psensor psensor-server -y
sudo apt-get install p7zip zip unzip unrar -y
sudo apt install filezilla -y
sudo apt-get install silversearcher-ag tree -y
sudo apt install libncurses5-dev libncursesw5-dev -y
# nfs remote mounting
sudo apt install nfs-common nfs-kernel-server -y

sudo apt-get install fftw3 libgmp-dev libmpfr-dev libfftw3-dev libgmp10 -y

# tex (for nbconvert)
#sudo apt-get install texlive-xetex texlive-fonts-recommended texlive-generic-recommended -y

## raid1
# sudo mdadm --create /dev/md0 --level=1 --raid-devices=2 /dev/sda /dev/sdb

# docker
#sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add
#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#sudo apt-get update
#sudo apt-get install docker-ce docker-ce-cli containerd.io -y
#sudo groupadd docker
#sudo gpasswd -a chengjiun docker
#sudo service docker restart
# docker-compose
#sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#sudo chmod +x /usr/local/bin/docker-compose
#sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

## NVIDIA #this doesn't support cuda-10.2 yet. so, pytorch need to be installed with cuda-10.1 for apex to work
# sudo apt-get install nvidia-cuda-toolkit -y
# Add the package repositories
#distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
#curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
#curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
#sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit
#sudo systemctl restart docker

# install vs code
sudo snap install --classic code

## nvtop
# sudo apt install nvtop -y
git clone https://github.com/Syllo/nvtop.git
mkdir -p nvtop/build && cd nvtop/build
cmake ..
# If it errors with "Could NOT find NVML (missing: NVML_INCLUDE_DIRS)"
# try the following command instead, otherwise skip to the build with make.
cmake .. -DNVML_RETRIEVE_HEADER_ONLINE=True
make
sudo make install # You may need sufficient permission for that (root)

# #zsh --> will go to interactive mode and stop everything below
sudo apt install zsh -y
exit
### need git clone
cd Softwares
# zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -sf "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
chsh -s /bin/zsh
cd ~/
