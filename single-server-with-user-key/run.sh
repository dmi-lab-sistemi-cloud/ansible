#!/bin/bash -x

VAGRANT_SERVER="vagrant_server"
BASE_DIR=$(pwd)

echo "[*] Crea ed avvia il virtual-server con vagrant"
cd $VAGRANT_SERVER
vagrant up

echo "[*] Esegui il comando con Ansible"
cd $BASE_DIR
ansible -i hosts.ini $VAGRANT_SERVER -m ping -u vagrant

# Per distruggere il virtual server
cd $VAGRANT_SERVER
vagrant destroy
