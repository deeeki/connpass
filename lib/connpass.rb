require 'connpass/version'
require 'connpass/event'
require 'connpass/connection'

module Connpass
  ENDPOINT = 'http://connpass.com/api/v1/'.freeze

  extend Connpass::Connection
  extend Connpass::Event
end
