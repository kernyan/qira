#! /bin/bash
sudo apt update
sudo apt install git curl python3 python3-dev python3-pip build-essential pkg-config zlib1g-dev libglib2.0-dev libpixman-1-dev
python3 -m venv env

./build_qemu.sh

sudo ln -sf $(pwd)/qira /usr/local/bin/qira

mv qemu tracers/qemu

