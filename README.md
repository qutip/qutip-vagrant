Vagrant environments for QuTiP
==============================

Vagrant VMs with a pre-configured QuTiP environments.

Prerequisites
-------------

The only requirement is that [vagrant](https://www.vagrantup.com/) is installed
on the host machine. In Ubuntu, the installation of vagrant is as easy as:

    $ sudo apt-get install vagrant

Usage
-----

Move into one of the directories for the available configurations:

1. ubuntu-12.04-qutip-2.2.0
1. ubuntu-14.04-qutip-3.0.0
1. ubuntu-14.04-qutip-3.0.1
1. ubuntu-14.04-qutip-latest

Setup the VM:

    $ vagrant up

Logon to the VM:

    $ vagrant ssh

This gives immediate access to a virtual machine with the specified versions of
the OS and QuTiP, including all its dependencies.

All files stored in the directory for each configuration are available in the
VM under the directory /vagrant.
