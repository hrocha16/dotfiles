# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export PATH="/usr/local/mysql/bin:$PATH"

source ~/.profile

# added by Anaconda3 4.1.1 installer
export PATH="/Users/Rocha/anaconda3/bin:$PATH"