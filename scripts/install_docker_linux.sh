echo "[ INFO ] Installing Docker on linux (Ubuntu/Debian)"
sleep 5
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
echo "[ INFO ] Check install repo (should be Docker instead of Ubuntu"
apt-cache policy docker-ce
sudo apt install docker-ce
echo "[ INFO ] Optional: Run the following cmd to check status"
echo "sudo systemctl status docker"
echo ""
echo ""
echo "[ INFO ] Optional: Add yourself to Docker Sudoer"
echo "sudo usermod -aG docker ${USER}"
#ZEND
