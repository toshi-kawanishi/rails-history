# RailsHistory

A command like history for rails.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_history'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_history

## Usage

### History Recording

This gem records rails generate/destroy histories on the `.rails_history` file automatically.

```
$ rails g model sample
$ cat .rails_history
rails generate model sample
```

### History Reference

The `rails-history` command show entries in the history list:

```
$ bundle exec rails-history
  1  rails generate model sample
```

You can re-execute a command in the history list:

```
$ bundle exec rails-history 1
bundle exec rails generate model sample
      invoke  active_record
      ...
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rails_history/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## TODO

* Options like `history` command
