HOST_IP_ESCAPED="10\.0\.2\.15"

sudo apt-get install -y python-mysqldb mysql-server
sed -i s/__HOST_IP__/HOST_IP_ESCAPED/g my.cnf
sudo rm /etc/mysql/my.cnf
sudo cp my.cnf /etc/mysql/my.cnf

sudo mysql_install_db
# Interactive. Will ask for some details. Press 'y' for almost everything
sudo mysql_secure_installation
