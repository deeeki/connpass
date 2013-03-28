require 'bundler/setup'
Bundler.setup(:default) if defined?(Bundler)

$:.unshift(File.expand_path('../../lib', __FILE__))
require 'connpass'
require 'minitest/autorun'
require 'minitest/pride'
require 'fakeweb'
require 'coveralls'
Coveralls.wear!

def fixture path
  File.read("#{File.dirname(__FILE__)}/fixtures/#{path}")
end

def stub_get api_path, fixture_path, options={}
  opts = {
    :body => fixture(fixture_path),
    :content_type => 'application/json; charset=utf-8'
  }.merge(options)
  FakeWeb.register_uri(:get, "#{Connpass::ENDPOINT}#{api_path}", opts)
end
