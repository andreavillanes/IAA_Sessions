
###############################################################################
#
#   This script will automatically install all Docker and Python
#   dependancies within a GCE Instance
#
#   The GCloud CMD at the bottom can be used to automatically create a GCE
#   instance and install all Docker and Python dependencies from scratch.
#
###############################################################################

# Prereqs
sudo apt install git -y
sudo apt install wget -y

# Clone repo
cd ~
mkdir github
cd github
git clone https://github.com/zaratsian/IAA_Sessions.git

# Install & Setup Docker
./IAA_Sessions/scripts/install_docker_linux.sh

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# Install MiniConda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh
chmod +x /tmp/miniconda.sh
sudo apt install bzip2 -y
sudo /tmp/miniconda.sh -b -p /opt/miniconda
echo 'export PATH="/opt/miniconda/bin:$PATH"' >> ~/.bashrc
exec -l $SHELL

#ZEND


###############################################################################
#
#   GCloud Command
#
###############################################################################


'''
gcloud compute --project=zproject201807 instances create iaa-instance \
--zone=us-east1-b \
--machine-type=n1-standard-16 \
--subnet=default \
--network-tier=PREMIUM \
--maintenance-policy=MIGRATE \
--service-account=880091509850-compute@developer.gserviceaccount.com \
--scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
--tags=flask-apps \
--image=debian-9-drawfork-v20181101 \
--image-project=eip-images \
--boot-disk-size=250GB \
--boot-disk-type=pd-standard \
--boot-disk-device-name=iaa-instance
'''


: <<'END'
gcloud compute --project=zproject201807 instances create iaa-instance \
--zone=us-east1-b \
--machine-type=n1-standard-16 \
--subnet=default \
--network-tier=PREMIUM \
--maintenance-policy=MIGRATE \
--service-account=880091509850-compute@developer.gserviceaccount.com \
--scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
--tags=flask-apps \
--image=debian-9-drawfork-v20181101 \
--image-project=eip-images \
--boot-disk-size=250GB \
--boot-disk-type=pd-standard \
--boot-disk-device-name=iaa-instance \
--metadata=startup-script="#! /bin/bash
# Prereqs
sudo apt install git -y
sudo apt install wget -y

# Clone repo
cd ~
mkdir github
cd github
git clone https://github.com/zaratsian/IAA_Sessions.git

# Install & Setup Docker
./IAA_Sessions/scripts/install_docker_linux.sh

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# Install MiniConda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh
chmod +x /tmp/miniconda.sh
sudo apt install bzip2 -y
sudo /tmp/miniconda.sh -b -p /opt/miniconda
echo 'export PATH="/opt/miniconda/bin:$PATH"' >> ~/.bashrc
exec -l $SHELL

#ZEND
EOF"

END

#ZEND
