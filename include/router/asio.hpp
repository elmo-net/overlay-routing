#ifndef ROUTER_ASIO_HPP
#define ROUTER_ASIO_HPP

#include <boost/asio.hpp>

namespace net {
    namespace detail {
        boost::asio::io_service ios;
    }
}

#endif //ROUTER_ASIO_HPP
