# lib/git_pre_commit_debugger_points_checker.rb
require "git_pre_commit_debugger_points_checker/version"

module GitPreCommitDebuggerPointsChecker
  class Error < StandardError; end

  class Railtie < Rails::Railtie
    railtie_name :git_pre_commit_debugger_points_checker

    rake_tasks do
      load "tasks/install_hooks.rake"
    end

    initializer "git_pre_commit_debugger_points_checker.install_hooks" do
      Rake::Task["git_pre_commit_debugger_points_checker:install_hooks"].invoke
    end
  end
end
