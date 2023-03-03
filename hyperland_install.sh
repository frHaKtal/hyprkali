git clone https://github.com/hyprwm/Hyprland/releases/download/v0.22.0beta/v0.22.0beta.tar.gz
tar xvzf v0.22.0beta.tar.gz
cd hyprland
sudo cp libwlroots.so.12032 /usr/lib
sudo apt-get install xutils-dev xcb-proto libtoool pkg-config git libopengl-dev libvulkan-dev libseat-dev libxcb-render-util0-dev libxcb-xinput-dev libxcb-composite0-dev libxcb-res0-dev automake autoconf make

git clone https://gitlab.freedesktop.org/xorg/lib/libxcb-errors.git
cd libxcb-errors
git submodule update --init
aclocal
autoconf
automake
./autogen.sh
make
sudo make install
sudo /sbin/ldconfig -v

#cd ..
#git clone https://mirrors-i.tuna.tsinghua.edu.cn/cygwin/x86_64/release/xcb-util-errors/libxcb-errors-devel/libxcb-errors-devel-1.0.1-1.tar.xz
#tar -xf libxcb-errors-devel-1.0.1-1.tar.xz

cd ..
cd example
mkdir /usr/share/wayland-sessions/
cp hyprland.desktop /usr/share/wayland-sessions/
mkdir ~/.config/hypr
cp hyprland.conf ~/.config/hypr

cd ..
sudo cp Hyprland /usr/bin/
sudo cp hyprctl /usr/bin/
