#!/bin/bash

declare -A logos=(
  ["arch"]=""
  ["ubuntu"]=""
  ["debian"]=""
  ["fedora"]=""
  ["centos"]=""
  ["opensuse"]=""
  ["manjaro"]=""
  ["alpine"]=""
  ["gentoo"]=""
  ["redhat"]=""
  ["pop"]=""
  ["mint"]=""
  ["endeavouros"]=""
  ["steamos"]=""
)

declare -A messages=(
  ["arch"]="I use Arch, btw"
  ["mint"]="Better than Ubuntu, worse than Arch"
)

distro=$(awk -F= '/^ID=/{print $2}' /etc/os-release | tr -d '"' | tr '[:upper:]' '[:lower:]')

if [[ -n "${messages[$distro]}" ]]; then
    text="${messages[$distro]}"
else
    text="${distro^}"
fi

if [[ -n "${logos[$distro]}" ]]; then
    echo -e "$text ${logos[$distro]}"
else
    echo "$text"
fi

