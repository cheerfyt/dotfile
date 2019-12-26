#!/bin/bash

red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
reset=$(tput sgr0)

color() {
    echo
    echo "${red}======================================================${reset}"
    echo "${green} Select $1: $2 ${reset}"
    echo "${red}======================================================${reset}"
    echo
    echo "${yellow}Description: ${reset}"
    echo
}

usage() {
    echo
    echo "${blue}kf p d s n${reset}"
    echo
}

kf() {
    unset object

    case $1 in
        p|pd|pod)
            object="pods"
            ;;
        d|dv|dev)
            object="deployment"
            ;;
        s|se|sev)
            object="service"
            ;;
        n|ns|namespaces)
            object="namespace"
            ;;
        *)
            usage
            exit 0
            ;;
    esac

    src=$(kubectl get $object | fzf --preview "echo {} | awk -F' ' '{print $1}'")
    if [ "x$src" != "x" ];then
        src_name=$(echo "$src" | cut -d" " -f1)
        color "$object" "$src_name"
        kubectl describe "$object" "${src_name}"
    fi
}
