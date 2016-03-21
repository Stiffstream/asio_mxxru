#
# Obtain external projects.
#

gem 'Mxx_ru', '>= 1.6.8'
require 'mxx_ru/externals'

MxxRu::arch_externals :asio do |e|
  e.url 'https://github.com/chriskohlhoff/asio/archive/asio-1-11-0.tar.gz'
  e.sha1 '1be2489015a1e1c7b8666a5a803d984cdec4a12b'

  e.map_dir 'asio/include' => 'dev/asio'
end

