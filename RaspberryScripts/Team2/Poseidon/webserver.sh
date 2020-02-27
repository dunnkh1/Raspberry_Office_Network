#!bin/bash
#note 27/02/2020 - jonathon
#this bash script will need to be incorperated into the bash script for the device that is going to be the web server
#planned to do later at some stage when things get rolling
install(){
	sudo apt-get -y update
	sudo apt-get -y install apache2

}
activate(){
	sudo service apache2 restart
}
initialSetup(){
	LOCATION='/etc/apache2/ports.conf'
	sudo cp /etc/apache2/ports.conf /etc/apache2/ports.conf.bak
	sudo rm -f /etc/apache2/ports.conf
	sudo touch /etc/apache2/ports.conf
	sudo echo 'Listen 8192' >> $LOCATION
	sudo echo '' >> $LOCATION
	sudo echo '<IfModule ssl_module>' >> $LOCATION
	sudo echo '	Listen 443' >> $LOCATION
	sudo echo '</IfModule>' >> $LOCATION
	sudo echo '' >> $LOCATION
	sudo echo '<IfModule mod_gnutls.c>' >> $LOCATION
	sudo echo '	Listen 443' >> $LOCATION
	sudo echo '</IfModule>' >> $LOCATION
}
install
initialSetup
activate

