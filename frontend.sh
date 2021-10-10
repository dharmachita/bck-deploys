#! /bin/bash
sudo apt update && apt upgrade -y
sudo apt-get install -y nodejs
sudo apt install -y npm
sudo apt-get install -y nginx
sudo mkdir source
cd source
sudo git clone https://github.com/ajayns/react-projects.git
cd react-projects/todo
sudo npm install
sudo npm run build
sudo rm -r /var/www/html
sudo mv build html
sudo mv html /var/www/
sudo service nginx start