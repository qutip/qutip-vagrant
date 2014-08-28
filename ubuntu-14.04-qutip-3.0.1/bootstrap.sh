#!/usr/bin/env bash

# source: https://github.com/StanAngeloff/vagrant-shell-scripts
apt-mirror-pick() {
  $SUDO sed -i \
    -e "s#\w\+\.archive\.ubuntu\.com#$1.archive.ubuntu.com#g" \
    -e "s#security\.ubuntu\.com#$1.archive.ubuntu.com#g" \
    '/etc/apt/sources.list'
}

# apt-mirror-pick 'jp'

VERSION=3.0.1

apt-get update

wget http://qutip.org/downloads/$VERSION/qutip-$VERSION.tar.gz -O /vagrant/qutip-$VERSION.tar.gz

apt-get install -y gfortran libblas-dev liblapack-dev

# python2 environment
apt-get install -y python-nose python-pip python-dev cython python-setuptools
apt-get install -y python-numpy python-scipy python-matplotlib
#pip install qutip==$VERSION
cd /tmp && tar zxfv /vagrant/qutip-$VERSION.tar.gz
cd /tmp/qutip-$VERSION && python setup.py install --with-f90mc
rm -rf /tmp/qutip-$VERSION

# python3 environment
apt-get install -y python3-nose python3-pip python3-dev cython3 python3-setuptools
apt-get install -y python3-numpy python3-scipy python3-matplotlib
#pip3 install qutip==$VERSION
cd /tmp && tar zxfv /vagrant/qutip-$VERSION.tar.gz
cd /tmp/qutip-$VERSION && python3 setup.py install --with-f90mc
rm -rf /tmp/qutip-$VERSION
