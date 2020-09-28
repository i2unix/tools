# Deploying Bash Script


# Install utils
sudo apt install git mc curl -y

# Install Apache2.4 Web Server
sudo apt update
sudo apt install apache2

# Add current user to server group "www-data"
sudo chown -R $USER:www-data /var/www
