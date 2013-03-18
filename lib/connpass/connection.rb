require 'cgi'
require 'open-uri'
require 'json'
require 'hashie/mash'

module Connpass
  module Connection
    def get path, options = {}
      url = "#{ENDPOINT}#{path}/"
      url = "#{url}?#{build_query(options)}" unless options.empty?
      open(url).read
    end

    def convert_response json_str
      Hashie::Mash.new(JSON.parse(json_str))
    end

    private

    def build_query options = {}
      options.to_a.map{|o| "#{o[0]}=#{CGI.escape(o[1].to_s)}" }.join('&')
    end
  end
end
