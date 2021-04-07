wget -O aerospike.tgz 'http://cor-mirror101.phonepe.nm5/aerospike-E4.8.0.6.tgz'
apt-get update
tar -xvf aerospike.tgz
cd aerospike-server-enterprise-4.8.0.6-ubuntu16.04/
sudo ./asinstall

wget -O amc.deb 'http://cor-mirror101.phonepe.nm5/aerospike-amc-e4.0.24.deb'
dpkg -i amc.deb
