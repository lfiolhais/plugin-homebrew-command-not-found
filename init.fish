function init -a path --on-event init_homebrew-command-not-found
  if not available brew
    echo "Please install 'brew' first"
    return 1
  end

  set -l brew_cmd (command brew command command-not-found-init 2> /dev/null)

  if test -eq status 1
    echo "Please install 'hombrew-command-not-found' first."
    echo "Check out https://github.com/Homebrew/homebrew-command-not-found"
    return 1
  end

  brew command command-not-found-init > /dev/null; and . (brew command-not-found-init)

end
