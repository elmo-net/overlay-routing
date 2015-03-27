#pragma once

namespace net {

class ClusterSocket
{
    //boost::asio::io_service _io_Service;

public:
    ClusterSocket();
    //ClusterSocket(boost::asio::io_service io_Service_to_use);
    ClusterSocket(const ClusterSocket& other) = delete;
    ClusterSocket(ClusterSocket&& other) = delete;

    ClusterSocket& operator= (const ClusterSocket& other) = delete;
    ClusterSocket& operator= (ClusterSocket&& other) = delete;

    ~ClusterSocket();

    void sendMessage(const unsigned char payload[]);
};

}
