#pragma once

#include <boost/asio/io_service.hpp>
using boost::asio::io_service;

class ClusterSocket
{
public:
    ClusterSocket();
    ~ClusterSocket();

    void sendMessage(const unsigned char payload[]);
};

