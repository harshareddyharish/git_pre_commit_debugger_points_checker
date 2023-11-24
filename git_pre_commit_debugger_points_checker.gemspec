# frozen_string_literal: true

require_relative "lib/git_pre_commit_debugger_points_checker/version"

# git_pre_commit_debugger_points_checker.gemspec

Gem::Specification.new do |spec|
  spec.name = "git_pre_commit_debugger_points_checker"
  spec.version = GitPreCommitDebuggerPointsChecker::VERSION
  spec.authors = ["Harish Reddy"]
  spec.email = ["vharish831@gmail.com"]

  spec.summary = "A Ruby gem to run Bash commands with a pre-commit hook"
  spec.description = "This gem provides a simple interface to run Bash commands, including a pre-commit hook to check for undesired words in committed files."
  spec.homepage = "https://github.com/yourusername/my_bash_runner_gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.files         = ["lib/my_bash_runner_gem.rb", "pre-commit"]
  spec.require_paths = ["lib"]

  spec.post_install_message = "To enable the pre-commit hook, run: MyBashRunnerGem::Runner.install_hook"
end