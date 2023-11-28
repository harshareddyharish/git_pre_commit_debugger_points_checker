# lib/git_pre_commit_debugger_points_checker.rb
require 'git_pre_commit_debugger_points_checker/version'

module GitPreCommitDebuggerPointsChecker
  class Error < StandardError; end
  class Installer
    COMMANDS = [
      'mkdir -p ./.git/hooks',
      'cp hooks/pre-commit ./.git/hooks/pre-commit',
      'chmod +x ./.git/hooks/pre-commit',
    ].freeze

    def self.run
      new.run
    end

    def run
      execute_commands
      create_pre_commit_ignore
    end

    private

    def execute_commands
      COMMANDS.each do |command|
        # system(command)
        FileUtils::Verbose.send(:system, command)
      end
    end

    def create_pre_commit_ignore
      File.open('.pre-commit-ignore', 'w') do |file|
        # You can optionally write content to the file here if needed
      end
    end
  end
end
