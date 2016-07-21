#include <asio.hpp>

#include <chrono>
#include <iostream>

int main()
{
	asio::io_service io_service;

	asio::steady_timer timer( io_service, std::chrono::seconds(2) );
	timer.async_wait( [&io_service]( const auto & ) {
		std::cout << "timer elapsed" << std::endl;
		io_service.stop();
	} );

	io_service.run();
}

