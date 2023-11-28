# frozen_string_literal: true

require "bundler/gem_tasks"
require './lib/git_pre_commit_debugger_points_checker'
task default: %i[]

task :install do
	GitPreCommitDebuggerPointsChecker::Runner.enable!
end

task :uninstall do
	GitPreCommitDebuggerPointsChecker::Runner.disable!
end
