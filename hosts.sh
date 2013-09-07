mkdir -p $HOME/.ssh
known_hosts_path="$HOME/.ssh/known_hosts"

touch $known_hosts_path
chmod 600 $known_hosts_path

sudo pip install netaddr
./add_hosts $known_hosts_path
sudo pip uninstall netaddr -y

fail_now