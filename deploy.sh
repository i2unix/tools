# Deploying Bash Script


# Install utils
sudo apt install git mc curl -y

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
