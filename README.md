# Connpass

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
Connpass.event_search(keyword: 'Python')
```

* The response is [Hashie::Mash](https://github.com/intridea/hashie#mash) object.
* You can use the same query parameters on the official reference.

## API Reference

- [APIリファレンス - connpass](http://connpass.com/about/api/)

## Supported versions

- Ruby 1.9.3 or higher

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
