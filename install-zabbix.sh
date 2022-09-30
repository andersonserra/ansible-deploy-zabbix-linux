#!/bin/bash

. /etc/os-release
. src/functions

#



case $ID in
# Essa rotina vai executar nos sistemas baseados em RedHat - Centos
centos)
    case $VERSION_ID in
    6)
#        echo "Esse script vai rodar no centos 6"
        thereis_docker
        zabbix_agent_centos_6
        ;;
    7)
#        echo "Esse script vai rodar no centos 7"
        thereis_docker
        zabbix_agent_centos_7
        ;;
    8)
#        echo "Esse script vai rodar no centos 8"
        thereis_docker
        zabbix_agent_centos_8
        ;;
    esac
    ;;
# Essa rotina vai executar na distribuição DEBIAN
debian)
    case $VERSION_ID in
    8)
#        echo "Esse script vai rodar no debian8"
        thereis_docker
        zabbix_agent_debian_8
        ;;
    9)
#        echo "Esse script vai rodar no debian9"
        thereis_docker
        zabbix_agent_debian_9
        ;;
    10)
#        echo "Esse script vai rodar no debian10"
        thereis_docker
        zabbix_agent_debian_10
        ;;
    11)
#        echo "Esse script vai rodar no debian11"
        thereis_docker
        zabbix_agent_debian_11
        ;;
    esac
    ;;
ubuntu)
    case $VERSION_CODENAME in
#  "Esse script vai rodar no ubuntu 14 trusty"
    trusty)
        thereis_docker
        zabbix_agent_ubuntu_14        
        ;;
#  "Esse script vai rodar no ubuntu 16 xenial"
    xenial)
        thereis_docker
        zabbix_agent_ubuntu_16        
        ;;
#  "Esse script vai rodar no ubuntu 18 bionic"
    bionic)
        thereis_docker
        zabbix_agent_ubuntu_18        
        ;;
    focal)
        thereis_docker
        zabbix_agent_ubuntu_20        
        ;;
    jammy)
        thereis_docker
        zabbix_agent_ubuntu_22        
        ;;
    esac
    ;;
esac
