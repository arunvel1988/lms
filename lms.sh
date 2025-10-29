# 1. Remove any old docker-compose binary
sudo rm -f /usr/local/bin/docker-compose

# 2. Add Docker’s official repository (if not already added)
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# 3. Add the Docker repo (replace $(. /etc/os-release; echo "$VERSION_CODENAME") with your Ubuntu codename, e.g., noble or jammy)
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] \
  https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release; echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# 4. Install the Compose plugin
sudo apt-get update
sudo apt-get install docker-compose-plugin -y
