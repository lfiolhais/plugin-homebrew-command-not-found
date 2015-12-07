function init -a path --on-event init_homebrew-command-not-found
  if not available brew
    echo "Please install 'brew' first"
    return 1
  end

  if not available brew command command-not-found-init
    echo "Please install 'hombrew-command-not-found' first"
    return 1
  end

  brew command command-not-found-init > /dev/null; and . (brew command-not-found-init)

end
