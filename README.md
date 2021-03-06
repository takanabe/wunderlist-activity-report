# Wunderlist::Activity::Report
A ruby gem to export your wunderlist activities

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wunderlist-activity-report'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wunderlist-activity-report

## Usage
Following environment variables are necessary to fetch Wunderlist data.

```
> cat .env
WUNDERLIST_ACCESS_TOKEN="wunderlist_access_token"
WUNDERLIST_CLIENT_ID="wunderlist_client_id"
TARGET_FOLDER="foldername"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/wunderlist-activity-report.
