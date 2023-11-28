# frozen_string_literal: true
require_relative "lib/git_pre_commit_debugger_points_checker/version"
# git_pre_commit_debugger_points_checker.gemspec

Gem::Specification.new do |spec|
  spec.name          = "git_pre_commit_debugger_points_checker"
  spec.version = GitPreCommitDebuggerPointsChecker::VERSION
  spec.authors = ["Harish Reddy"]
  spec.email = ["v.harish831@gmail.com"]
  spec.summary       = %q{A Git pre-commit hook for checking debugging statements.}
  spec.description   = %q{A Git pre-commit hook that checks for debugging statements before allowing a commit.}
  spec.files = [
    "lib/git_pre_commit_debugger_points_checker/version.rb",
    "lib/hooks/pre-commit",
    "git_pre_commit_debugger_points_checker.gemspec"
  ] + Dir["bin/*"]
  spec.homepage      = "https://github.com/harshareddyharish/git_pre_commit_debugger_points_checker"
  spec.license       = "MIT"
  spec.add_runtime_dependency "git", "~> 1.5"
  spec.add_development_dependency "bundler", "~> 2.0"
end
