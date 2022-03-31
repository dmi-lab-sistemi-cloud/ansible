#!/bin/bash

echo "[*] Up dell'infrastruttura multi-host"
vagrant up

echo "[*] Eseguo il comando 'hostname' su tutti gli host"
ansible multi -a "hostname" 2> /dev/null

echo "[*] Eseguo il comando 'df -h' su tutti gli host"
ansible multi -a "df -h" 2> /dev/null

echo "[*] Destroy dell'infrastruttura multi-host"
vagrant destroy