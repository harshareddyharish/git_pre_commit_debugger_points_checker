# lib/git_pre_commit_debugger_points_checker.rb
require 'git_pre_commit_debugger_points_checker/version'

module GitPreCommitDebuggerPointsChecker
  class Error < StandardError; end
  class Runner
    def self.enable!
      new.run
    end

    def self.disable!
      system('rm -rf ./.git/hooks/pre-commit')
    end

    def run
      execute_commands
      create_pre_commit_ignore
    end

    private

    def execute_commands
      system('mkdir -p ./.git/hooks')
      system("cp lib/hooks/pre-commit ./.git/hooks/pre-commit")
      system('chmod +x ./.git/hooks/pre-commit')
    end

    def create_pre_commit_ignore
      File.open('.pre-commit-ignore', 'w') do |file|
        # You can optionally write content to the file here if needed
      end
    end
  end
end