$:.unshift(File.expand_path('../', __FILE__))
require 'spec_helper'

describe Connpass do
  describe '.convert_response' do
    let(:response){ %[{"a": 1, "b": 2}] }
    subject{ Connpass.convert_response(response) }
    it 'convert to Hashie::Mash' do
      subject.must_be_instance_of Hashie::Mash
      subject.a.must_equal 1
      subject.to_hash.must_equal ({'a' => 1, 'b' => 2})
    end
  end

  describe '.event_search' do
    stub_get('event/?keyword=Python', 'event.json')
    subject{ Connpass.event_search(keyword: 'Python') }
    it 'return converted API results' do
      subject.results_returned.must_equal 10
      subject.events.first.title.must_equal 'Python mini Hack-a-thon in English(#6)'
    end
  end
end
