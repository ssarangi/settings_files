sudo apt-get install libxi-dev libxmu-dev x11proto-xf86vidmode-dev git-core autoconf automake libtool build-essential dh-autoreconf libpthread-stubs0-dev libpciaccess-dev xutils-dev libx11-dev x11proto-gl-dev x11proto-dri2-dev libxext-dev libxdamage-dev libxcb-xfixes0-dev libx11-xcb-dev libxcb-glx0-dev libexpat1-dev libdrm-nouveau1a flex llvm bison libxmu-dev 
mkdir dev
cd dev
mkdir graphics
cd graphics
git clone git://anongit.freedesktop.org/git/mesa/drm
export PKG_CONFIG_PATH=/usr/local/xorg/lib/pkgconfig:$PKG_CONFIG_PATH

cd drm
./autogen.sh
./configure --prefix=/usr/local/xorg
make
sudo make install 

cd ..
git clone git://anongit.freedesktop.org/git/mesa/mesa
cd mesa
./autogen.sh --prefix=/usr/local/xorg --with-dri-drivers="" --with-gallium-drivers=r600 --enable-debug
make
sudo make install
cd ..
git clone git://anongit.freedesktop.org/git/mesa/glut
git clone git://anongit.freedesktop.org/git/mesa/demos
export LD_LIBRARY_PATH=/usr/local/xorg/lib
export LIBGL_DRIVERS_PATH=/usr/local/xorg/lib
sudo ldconfig
ldconfig -p | grep libGL.so
cd glut
./autogen.sh --prefix=/usr/local/xorg
make
sudo make install
cd ..
cd demos
./autogen.sh
make

git clone git://people.freedesktop.org/~mareko/libtxc_dxtn
