# POSTGRESQL

sudo apt-get install -y postgresql postgresql-contrib
sudo su postgres -c 'pg_ctlcluster 9.3 main start'
sudo su postgres -c 'createuser -s devel' || echo 'ups'
