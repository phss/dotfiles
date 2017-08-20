# emacs ansi-term support
if test -n "$EMACS"
  set -x TERM eterm-color
end

function fish_user_key_bindings
  bind \el forward-char
end

set fish_greeting ""
#set fish_greeting (fortune)

set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)
set -x PATH /usr/local/bin /Users/pschneid/Documents/programming/go/bin $PATH
#set -x PATH /usr/local/bin /Users/pschneid/Documents/programming/go/bin /Users/pschneid/.cargo/bin $PATH
#set -x RUST_SRC_PATH /Users/pschneid/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src
set -x GOPATH /Users/pschneid/Documents/programming/go

status --is-interactive; and . (rbenv init -|psub)
status --is-interactive; and . (pyenv init -|psub)

[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish
