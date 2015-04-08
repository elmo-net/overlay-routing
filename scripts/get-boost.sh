#! /bin/sh

os="$(uname -s)"

case $os in
    "Linux")
        wget -q -O boost.tar.gz http://sourceforge.net/projects/boost/files/boost/1.57.0/boost_1_57_0.tar.gz/download  \
            && mkdir boost \
            && tar --strip-components=1 -C boost -xzf boost.tar.gz \
            && cd .. \
            && sudo boost/bootstrap.sh # let boost do its install routine
        rm -R -f boost
        rm -f boost.tar.gz;;
    "Darwin")
        echo on MacOS;;
    *)
        echo Something went wrong;;
esac
