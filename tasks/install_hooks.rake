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
