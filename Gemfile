source 'https://rubygems.org'

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gemspec

group :test do
  gem 'coveralls', require: false
  gem 'codeclimate-test-reporter', require: false

  # NOTE. fakeweb v1.3.0(latest version) doesn't work on ruby 2.4+, but this is fixed at master branch
  # c.f. https://github.com/chrisk/fakeweb/issues/62
  gem 'fakeweb', github: "chrisk/fakeweb"
end
