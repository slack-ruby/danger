## Danger

[Danger](http://danger.systems) runs during Slack Ruby projects' CI process, and gives you a chance to automate common code review chores.

[![Build Status](https://travis-ci.org/slack-ruby/danger.svg?branch=master)](https://travis-ci.org/slack-ruby/danger)

### Setup

Enable Danger for a project within the [slack-ruby organization](https://github.com/slack-ruby).

#### Set DANGER_GITHUB_API_TOKEN in Travis-CI

In Travis-CI, choose _Settings_ and add `DANGER_GITHUB_API_TOKEN` in _Environment Variables_. Set the value to the API key for the [dangerpr-bot](https://github.com/dangerpr-bot) user, look in a recent build for this project for its value.

#### Add Danger

Add `slack-ruby-danger` to `Gemfile`.

```ruby
gem 'slack-ruby-danger', '~> 0.1.0'
```

#### Add Dangerfile

Commit a `Dangerfile`, eg. [slack-ruby-client's Dangerfile](https://github.com/slack-ruby/slack-ruby-client/blob/master/Dangerfile).

```ruby
danger.import_dangerfile(gem: 'slack-ruby-danger')
```

#### Add Danger to Travis-CI

Add Danger to `.travis.yml`, eg. [slack-ruby-client's Travis.yml](https://github.com/slack-ruby/slack-ruby-client/blob/master/.travis.yml).

```yaml
matrix:
  include:
    - rvm: 2.3.1
      script:
        - bundle exec danger
```

#### Commit via a Pull Request

To test things out make a pull request without CHANGELOG.md changes. Iterate until green.

## License

MIT License. See [LICENSE](LICENSE) for details.

