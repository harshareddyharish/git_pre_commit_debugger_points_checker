# tasks/install_hooks.rake
namespace :git_pre_commit_debugger_points_checker do
  desc "Install Git pre-commit hooks"
  task :install_hooks do
    hook_commands = [
      'mkdir -p ./.git/hooks',
      'cp hooks/pre-commit ./.git/hooks/pre-commit',
      'chmod +x ./.git/hooks/pre-commit',
      'touch ./.pre-commit-ignore'
    ]

    hook_commands.each do |command|
      system(command)
    end
  end
end

# Use a Rake task to run the install_hooks task
task :install_hooks => 'git_pre_commit_debugger_points_checker:install_hooks'

# This will automatically run the install_hooks task during bundle install
Rake::Task["install_hooks"].invoke
