if meteor --version >/dev/null 2>&1; then
	echo "Meteor was already installed."
else
	echo ">>>>>Installing Meteor<<<<<"
	curl https://install.meteor.com | sh
	cd /vagrant/
	meteor create app
	cd /home/vagrant/
	sudo mkdir -p /home/vagrant/app/.meteor/local
	sudo mount --bind /home/vagrant/app/.meteor/local/ /vagrant/app/.meteor/local/
	echo “sudo mount --bind /home/vagrant/app/.meteor/local/ /vagrant/app/.meteor/local/” >> ~/.bashrc && source ~/.bashrc
	echo "Meteor installed."
fi
cd /vagrant/app/
meteor
echo "Meteor is running."