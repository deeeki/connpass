# Connpass [![Build Status](https://travis-ci.org/itzki/connpass.png)](https://travis-ci.org/itzki/connpass) [![Coverage Status](https://coveralls.io/repos/itzki/connpass/badge.png)](https://coveralls.io/r/itzki/connpass) [![Code Climate](https://codeclimate.com/github/itzki/connpass.png)](https://codeclimate.com/github/itzki/connpass) [![Dependency Status](https://gemnasium.com/itzki/connpass.png)](https://gemnasium.com/itzki/connpass)

A Ruby wrapper for the [connpass](http://connpass.com/) API

## Installation

Add this line to your application's Gemfile:

    gem 'connpass'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install connpass

## Usage

### Search events

```ruby
res = Connpass.event_search(keyword: 'Python')
res.events.each{|e| puts e.title }
```

* The response is a [Hashie::Mash](https://github.com/intridea/hashie#mash) object (dot-accessible Hash).
* You can use the same query parameters on the official API reference.

## API reference

- [APIリファレンス - connpass](http://connpass.com/about/api/)

## Supported versions

- Ruby 1.9.3 or higher

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
