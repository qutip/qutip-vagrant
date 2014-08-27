#!/usr/bin/env bash

apt-get update

apt-get install -y python-software-properties

add-apt-repository -y ppa:jrjohansson/qutip-releases

apt-get update

apt-get install -y python-nose python-qutip
apt-get install -y python3-nose python3-qutip
