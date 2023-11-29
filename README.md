# GitPreCommitDebuggerPointsChecker

A Git pre-commit hook that checks for debugging statements before committing a change to git

## Installation

Add this gem to the Gemfile development group and run the bundle install

```
# Gemfile
group :development do
  gem 'git_pre_commit_debugger_points_checker', '~> 1.8'
end
```

## Usage
Thanks for installing git_pre_commit_debugger_points_checker. To activate or deactivate the pre-commit checker, you have two ways: 1) generate a file named pre_commit_checker.rb in the config/initializers/ directory add the configuration, or 2) include the configuration directly in the development.rb environment file. Don't forget to restart the server to complete the setup.

```
# config/initializers/pre_commit_checker.rb
if Rails.env.development?
  # Enable the Git Pre-Commit Debugger Points Checker
  # Prevents developers from pushing commits containing debugger points
  GitPreCommitDebuggerPointsChecker::Runner.enable!

  # Disable the Git Pre-Commit Debugger Points Checker
  # Allows developers to push commits without debugger points checking
  # GitPreCommitDebuggerPointsChecker::Runner.disable!
end
```

### OR

```
# config/environments/development.rb
Rails.application.configure do
  # Enable the Git Pre-Commit Debugger Points Checker
  # Prevents developers from pushing commits containing debugger points
  GitPreCommitDebuggerPointsChecker::Runner.enable!

  # Disable the Git Pre-Commit Debugger Points Checker
  # Allows developers to push commits without debugger points checking
  # GitPreCommitDebuggerPointsChecker::Runner.disable!
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/harshareddyharish/git_pre_commit_debugger_points_checker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/harshareddyharish/git_pre_commit_debugger_points_checker/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GitPreCommitDebuggerPointsChecker project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/harshareddyharish/git_pre_commit_debugger_points_checker/blob/main/CODE_OF_CONDUCT.md).
