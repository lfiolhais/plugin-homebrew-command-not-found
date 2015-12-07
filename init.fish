function init -a path --on-event init_homebrew-command-not-found
  if not available brew
    echo "Please install 'brew' first"
    return 1
  end

  
end
