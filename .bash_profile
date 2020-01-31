# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Add krew to the `$PATH`
# https://github.com/kubernetes-sigs/krew/
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Add brew installs to '$PATH'
export PATH="/usr/local/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# read multiple kubernete config files
export KUBECONFIG=$HOME/.kube/config:$HOME/.kube/kubecfg.yaml

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Common history and no duplicates in bash history
# See: http://unix.stackexchange.com/a/18443
HISTCONTROL=ignoredups:erasedups;
shopt -s histappend;
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND";

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
if [[ -e "/usr/local/share/bash-completion/bash_completion" ]]; then
	export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
	source "/usr/local/share/bash-completion/bash_completion"
elif [[ -e "/usr/local/etc/profile.d/bash_completion.sh" ]]; then
	source "/usr/local/etc/profile.d/bash_completion.sh"
elif [[ -e "/etc/bash_completion" ]]; then
	source "/etc/bash_completion"
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults;
