#pragma once

#include <boost/asio/io_service.hpp>
using boost::asio::io_service;

namespace net {

class ClusterSocket
{
    io_service io;

public:
    ClusterSocket();
    ClusterSocket(const ClusterSocket& other);
    ClusterSocket(ClusterSocket&& other) noexcept;

    ClusterSocket& operator= (const ClusterSocket& other);
    ClusterSocket& operator= (ClusterSocket&& other) noexcept;

    ~ClusterSocket();

    void sendMessage(const unsigned char payload[]);
};

}
