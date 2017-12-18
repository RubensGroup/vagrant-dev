#https://www.digitalocean.com/community/tutorials/how-to-install-python-3-and-set-up-a-local-programming-environment-on-ubuntu-16-04

sudo apt-get update
sudo apt-get -y upgrade

python3 -V

sudo apt-get install -y python3-pip

sudo apt-get install build-essential libssl-dev libffi-dev python-dev



#Libreria Cliente Servidor de lenguajes como servicio.
sudo apt-get install thrift-compiler


sudo apt-get -y install python-pip