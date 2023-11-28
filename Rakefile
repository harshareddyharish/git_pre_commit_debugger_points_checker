# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('lib', __dir__)
require 'git_pre_commit_debugger_points_checker'
require "bundler/gem_tasks"

task :install_pre_commit_hook do
	binding.pry
   GitPreCommitDebuggerPointsChecker::Installer.run
end
