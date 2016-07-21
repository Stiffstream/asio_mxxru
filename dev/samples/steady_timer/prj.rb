#!/usr/bin/ruby
require 'rubygems'

gem 'Mxx_ru', '>= 1.3.0'

require 'mxx_ru/cpp'

MxxRu::Cpp::exe_target {

  target 'samples.steady_timer.app'

  required_prj 'asio_mxxru/prj.rb'

  cpp_source 'main.cpp'
}

