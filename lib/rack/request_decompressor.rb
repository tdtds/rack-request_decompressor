# coding: utf-8
require "rack/request_decompressor/version"

module Rack
	class UnknownCompressMethod < StandardError; end

	class RequestDecompressor
		def initialize(app)
			@app = app
		end

		def call(env)
			req = Rack::Request.new(env)
			env['rack.input'] = decompress(req.body, env['HTTP_CONTENT_ENCODING'])
			@app.call(env)
		end

		def decompress(body, method)
			case method
			when 'gzip'
				Zlib::GzipReader.wrap(StringIO.new body.read)
			when 'deflate'
				StringIO.new(Zlib::Inflate.new(-Zlib::MAX_WBITS).inflate(body.read))
			when nil
				body
			else
				raise Rack::UnknownCompressMethod.new("unknown compressing method '#{method}'.")
			end
		end
	end
end
