#!/bin/bash

while true
do
    # Comandi possibili
    echo ""
    echo "Comandi:"
    echo "1: vagrant up"
    echo "2: vagrant provision"
    echo "3: vagrant ssh"
    echo "4: vagrant halt"
    echo "5: vagrant destroy"
    echo "q: quit"

    # Scelta comando
    read -p "Scegli un comando [1-5]: " comando

    # Switch case per l'esecuzione del comando
    case "$comando" in
        "1")
            echo "[*] vagrant up"
            vagrant up
            ;;
        "2")
            echo "[*] vagrant provision"
            vagrant provision
            ;;
        "3")
            echo "[*] vagrant ssh"
            vagrant ssh
            ;;
        "4")
            echo "[*] vagrant halt"
            vagrant halt
            ;;
        "5")
            echo "[*] vagrant destroy"
            vagrant destroy
            ;;
        "q")
            echo "[*] quit"
            break
            ;;
        *)
            continue
            ;;
    esac
done