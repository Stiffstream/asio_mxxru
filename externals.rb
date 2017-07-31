MxxRu::git_externals :asio do |e|
  e.url 'https://github.com/chriskohlhoff/asio.git'
  e.commit 'f5c570826d2ebf50eb38c44039181946a473148b'

  e.map_dir 'asio/include' => 'dev/asio'
end
