# Deploying Bash Script


# Install utils
sudo apt install git mc curl zip unzip -y

# Install Apache2.4 Web Server
sudo apt update
sudo apt install apache2

# Add current user to server group "www-data"
sudo chown -R $USER:www-data /var/www

#Install  Mysql Server
sudo apt install mysql-server
sudo mysql_secure_installation

# Configure root mysql user
sudo mysql

mysql> SELECT user,authentication_string,plugin,host FROM mysql.user;
mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
mysql> FLUSH PRIVILEGES;
mysql> SELECT user,authentication_string,plugin,host FROM mysql.user;
mysql> exit

# Install PHP
sudo add-apt-repository ppa:ondrej/php
sudo update
sudo apt upgrade
sudo apt install php7.3 libapache2-mod-php7.3 php7.3-mysql php7.3-cli php7.3-fpm php7.3-json php7.3-pdo php7.3-mysql php7.3-zip php7.3-gd php7.3-mbstring php7.3-curl php7.3-xml php7.3-bcmath php7.3-json

# Configure Apache2 
sudo nano /etc/apache2/mods-enabled/dir.conf

<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>

sudo systemctl restart apache2
sudo service apache2 restart

sudo systemctl status apache2
sudo service apache2 status

# Configure PHP


# Install ZendServer

# Install Composer

# Install NodeJS


