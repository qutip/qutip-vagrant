Vagrant environments for QuTiP
==============================

Vagrant VMs with a pre-configured QuTiP environments.

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

This gives immediate access to a virtual ubuntu 14.04 OS with QuTiP 3.0.1
and all its dependencies.

All files stored in the directory form where the "vagrant up" and "vagrant ssh" 
are ran are available in the VM under the directory /vagrant.
