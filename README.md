# GitPreCommitDebuggerPointsChecker

A Git pre-commit hook that checks for debugging statements before committing a change to git

## Installation

Add the gem to Gemfile development group and run bundle install

```
# Gemfile
group :development do
  gem 'git_pre_commit_debugger_points_checker', '~> 1.8'
end
```

## Usage
Thank you for installing git_pre_commit_debugger_points_checker. To enable or disable the pre-commit checker, create a file named pre_commit_checker.rb within the config/initializers/ directory. Remember to restart the server to finalize the setup.

```
# config/intializers/pre_commit_checker.rb
# Enable the Git Pre-Commit Debugger Points Checker
# Prevents developers from pushing commits containing debugger points
GitPreCommitDebuggerPointsChecker::Runner.enable!

# Disable the Git Pre-Commit Debugger Points Checker
# Allows developers to push commits without debugger points checking
# GitPreCommitDebuggerPointsChecker::Runner.disable!
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/git_pre_commit_debugger_points_checker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/git_pre_commit_debugger_points_checker/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GitPreCommitDebuggerPointsChecker project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/git_pre_commit_debugger_points_checker/blob/main/CODE_OF_CONDUCT.md).
