#! /bin/sh

os="$(uname -s)"
prefix="/usr/local"

case $os in
    "Linux")
        wget -q http://www.cmake.org/files/v3.2/cmake-3.2.1-Linux-x86_64.sh \
            && chmod +x cmake-3.2.1-Linux-x86_64.sh \
            && sudo ./cmake-3.2.1-Linux-x86_64.sh --prefix=$prefix --skip-license
        rm -f cmake-3.2.1-Linux-x86_64.sh;;
    "Darwin")
        echo on MacOS;;
    *)
        echo Something went wrong;;
esac
