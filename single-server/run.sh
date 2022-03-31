#!/bin/bash -x

VAGRANT_SERVER="vagrant_server"
PRIV_KEY="$HOME/.vagrant.d/insecure_private_key"
BASE_DIR=$(pwd)

echo "[*] Crea ed avvia il virtual-server con vagrant"
cd $VAGRANT_SERVER
vagrant up

echo "[*] Esegui il comando con Ansible"
cd $BASE_DIR
ansible --private-key $PRIV_KEY -i hosts.ini $VAGRANT_SERVER -m ping -u vagrant

# Per distruggere il virtual server
cd $VAGRANT_SERVER
vagrant destroy
