# Rack::RequestDecompressor

A rack middleware to decompress request body by gzip or deflate.

## Installation

Add this line to your application's Gemfile:

    gem 'rack-request_decompressor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-request_decompressor

## Usage

```
require 'rack/request_decompressor'
use Rack::RequestDecompressor
```

then access to server by HTTP client with:

* add header 'Content-Encoding: gzip' or 'deflate'
* compress body by gzip or deflate

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
