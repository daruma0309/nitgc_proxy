#!/bin/bash

echo "setup environment variable"
sh -c "echo \"export http_proxy=http://proxy.ice.gunma-ct.ac.jp:8080/\" >> ~/.bashrc"

echo "setup apt-get"
sh -c "echo \"Acquire::https::proxy "https://proxy.ice.gunma-ct.ac.jp:8080/";\" >> /etc/apt/apt.conf"

echo "setup wgetrc"
sh -c "echo \"http_proxy = http://proxy.ice.gunma-ct.ac.jp:8080/\" >> /etc/wgetrc"
