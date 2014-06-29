if ENV['CI'] && RUBY_VERSION.start_with?('2.1')
  require 'coveralls'
  require 'codeclimate-test-reporter'
  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    Coveralls::SimpleCov::Formatter,
    CodeClimate::TestReporter::Formatter
  ]
  SimpleCov.start 'test_frameworks'
end

require 'connpass'
require 'minitest/autorun'
require 'minitest/pride'
require 'fakeweb'

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
