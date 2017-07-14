function random_color
  set -l min 0
  if [ (count $argv) -gt 0 ]
    set min $argv[1]
  end

  set -l max 255
  if [ (count $argv) -gt 1 ]
    set max $argv[2]
  end

  set beam "math (random)%\($max-$min+1\)+$min"
  printf "%02x%02x%02x" (eval $beam) (eval $beam) (eval $beam)
end

function fish_prompt --description 'Write out the prompt'
	set -l last_status $status

	if not set -q __fish_git_prompt_show_informative_status
		set -g __fish_git_prompt_show_informative_status 1
	end
	if not set -q __fish_git_prompt_hide_untrackedfiles
		set -g __fish_git_prompt_hide_untrackedfiles 1
	end

	if not set -q __fish_git_prompt_color_branch
		set -g __fish_git_prompt_color_branch magenta --bold
	end
	if not set -q __fish_git_prompt_showupstream
		set -g __fish_git_prompt_showupstream "informative"
	end
	if not set -q __fish_git_prompt_char_upstream_ahead
		set -g __fish_git_prompt_char_upstream_ahead "↑"
	end
	if not set -q __fish_git_prompt_char_upstream_behind
		set -g __fish_git_prompt_char_upstream_behind "↓"
	end
	if not set -q __fish_git_prompt_char_upstream_prefix
		set -g __fish_git_prompt_char_upstream_prefix ""
	end

	if not set -q __fish_git_prompt_char_stagedstate
		set -g __fish_git_prompt_char_stagedstate "●"
	end
	if not set -q __fish_git_prompt_char_dirtystate
		set -g __fish_git_prompt_char_dirtystate "✚"
	end
	if not set -q __fish_git_prompt_char_untrackedfiles
		set -g __fish_git_prompt_char_untrackedfiles "…"
	end
	if not set -q __fish_git_prompt_char_conflictedstate
		set -g __fish_git_prompt_char_conflictedstate "✖"
	end
	if not set -q __fish_git_prompt_char_cleanstate
		set -g __fish_git_prompt_char_cleanstate "✔"
	end

	if not set -q __fish_git_prompt_color_dirtystate
		set -g __fish_git_prompt_color_dirtystate blue
	end
	if not set -q __fish_git_prompt_color_stagedstate
		set -g __fish_git_prompt_color_stagedstate yellow
	end
	if not set -q __fish_git_prompt_color_invalidstate
		set -g __fish_git_prompt_color_invalidstate red
	end
	if not set -q __fish_git_prompt_color_untrackedfiles
		set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
	end
	if not set -q __fish_git_prompt_color_cleanstate
		set -g __fish_git_prompt_color_cleanstate green --bold
	end


	if not set -q __fish_prompt_normal
		set -g __fish_prompt_normal (set_color normal)
	end

	set -l color_cwd
	set -l prefix


	# PWD
	set_color $fish_color_cwd

  if [ $last_status -ne 0 ]
	  set_color $fish_color_error
  end

  echo
	echo -n (basename $PWD)
	printf '%s ' (__fish_vcs_prompt)
	echo -n (set_color (random_color))'❯'(set_color (random_color))'❯'(set_color (random_color))'❯ '

	set_color normal
end
