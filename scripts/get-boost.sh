#! /bin/sh

os="$(uname -s)"

case $os in
    "Linux")
        echo "Downloading boost from official sources"
        wget -q -O boost.tar.gz http://sourceforge.net/projects/boost/files/boost/1.57.0/boost_1_57_0.tar.gz/download  \
            && echo "unpacking to ./boost/ (will be deleted afterwards)" && mkdir boost \
            && tar --strip-components=1 boost -xzf boost.tar.gz \
            && echo "Bootstrapping boost" && sudo boost/bootstrap.sh # let boost do its install routine
        rm -R -f boost
        rm -f boost.tar.gz;;
    "Darwin")
        echo on MacOS;;
    *)
        echo Something went wrong;;
esac
