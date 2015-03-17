#include <iostream>
#include <boost/asio.hpp>

int main () {
    boost::asio::io_service io_dummy;
    boost::asio::deadline_timer t(io_dummy, boost::posix_time::seconds(5));
    t.wait();
    std::cout << "Hello word!" << std::endl;
}