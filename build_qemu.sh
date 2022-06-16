# sudo apt install libglu1-mesa-dev freeglut3-dev mesa-common-dev

sudo apt-get install git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev ninja-build

sudo apt-get install git-email
sudo apt-get install libaio-dev libbluetooth-dev libcapstone-dev libbrlapi-dev libbz2-dev
sudo apt-get install libcap-ng-dev libcurl4-gnutls-dev libgtk-3-dev
sudo apt-get install libibverbs-dev libjpeg8-dev libncurses5-dev libnuma-dev
sudo apt-get install librbd-dev librdmacm-dev
sudo apt-get install libsasl2-dev libsdl2-dev libseccomp-dev libsnappy-dev libssh-dev
sudo apt-get install libvde-dev libvdeplug-dev libvte-2.91-dev libxen-dev liblzo2-dev
sudo apt-get install valgrind xfslibs-dev

sudo apt-get install libnfs-dev libiscsi-dev

if [[ ! -d  "qemu" ]]; then
  git clone https://gitlab.com/qemu-project/qemu.git/
fi

cd qemu
git checkout stable-6.1
./configure --target-list=i386-linux-user,x86_64-linux-user,arm-linux-user,ppc-linux-user,aarch64-linux-user,mips-linux-user,mipsel-linux-user,riscv32-linux-user,riscv64-linux-user --enable-tcg-interpreter --enable-debug-tcg --python=python
make -j
cd ..
