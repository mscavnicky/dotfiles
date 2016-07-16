source $HOME/.aliases

function fish_prompt
  set -l cwd (prompt_pwd)

  set -l normal_color     (set_color normal)
  set -l directory_color  (set_color cyan)
  set -l repository_color (set_color red)
  set -l prompt_color     (set_color green)

  echo -n -s $directory_color $cwd $normal_color
  if git_is_repo
    echo -n -s $repository_color " (" (git_branch_name) ")" $normal_color
  end
  echo -n -s $prompt_color " \$ " $normal_color
end
