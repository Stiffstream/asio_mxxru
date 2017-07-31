#include <asio.hpp>

#include <chrono>
#include <iostream>

int main()
{
	asio::io_context io_context;

	asio::steady_timer timer( io_context, std::chrono::seconds(2) );
	timer.async_wait( [&io_context]( const auto & ) {
		std::cout << "timer elapsed" << std::endl;
		io_context.stop();
	} );

	io_context.run();
}

