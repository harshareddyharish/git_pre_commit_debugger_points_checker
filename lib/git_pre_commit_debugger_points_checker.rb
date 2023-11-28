# lib/git_pre_commit_debugger_points_checker/runner.rb
module GitPreCommitDebuggerPointsChecker
  class Runner
    def self.enable!
      new.enable
    end

    def self.disable!
      system('rm -rf ./.git/hooks/pre-commit')
    end

    def enable
      system('mkdir -p ./.git/hooks')
      write_pre_commit_hook
      create_pre_commit_ignore
    end

    private

    def write_pre_commit_hook
      File.open('.git/hooks/pre-commit', 'w') do |file|
        file.puts(pre_commit_script)
      end
      system('chmod +x .git/hooks/pre-commit')
    end

    def create_pre_commit_ignore
      ignore_file_path = '.pre-commit-ignore'
      unless File.exist?(ignore_file_path)
        File.open(ignore_file_path, 'w') do |file|
          file.puts("# Include files here to ignore git pre-commit checker")
          file.puts("# - filename1.rb")
          file.puts("# - filename2.rb")
        end
      end
    end

    def pre_commit_script
      <<~SCRIPT
        # hooks/pre-commit
        # This script verifies if a list of "undesired" words are presented in the files you are
        # intended to commit such, debugging information or keys/tokens/passwords.
        LIST="byebug\\|debugger\\|binding.pry"

        PROJECT_ROOT=$(git rev-parse --show-toplevel)
        IGNORED_FILES="$PROJECT_ROOT/.pre-commit-ignore"

        if git rev-parse --verify HEAD >/dev/null 2>&1; then
            against=HEAD
        fi

        for FILE in `git diff-index --name-status --cached $against -- | cut -c3-` ; do
            # Skip checks on any ignored files
            if [[ -f "$IGNORED_FILES" ]]; then
                if grep -q "$FILE" "$IGNORED_FILES"; then
                    continue
                fi
            fi

            # Check if the file contains one of the words in LIST
            if grep -w $LIST $FILE; then
                echo "$FILE has one of the debugging statements that you don't want to commit! Please remove it or run git commit with the --no-verify flag."
                exit 1
            fi
        done
        exit
      SCRIPT
    end
  end
end
