# you can find app names by running ui.apps() in the REPL
app.name: Gnome-terminal
and not title: /vim/i
-
# NOTES (move this to talon hacks eventually)
#key_wait increases the delay when pressing keys (milliseconds)

#this is useful if an app seems to jumble or drop keys
#settings():
#    key_wait = 4.0

#activate the global tag "browser"
#tag(): browser

# shortcuts
clear left: key(ctrl-u)
clear right: key(ctrl-k)
clear:
	key(ctrl-k)
	key(ctrl-u)
clear output: key(ctrl-l)
interrupt: key(ctrl-c)
kill: key(ctrl-d)
mega kill: key(ctrl-x)

# grep sed awk tr
hefty grip:
	insert('ftgrep .')
tell|tall|towel grip [<user.text>]:
	insert("ftgrep .talon ''")
	key(left)
	insert(text or '')
tell|tall|towel grip files [<user.text>]:
	insert("grep -rl --include='*.talon' ''")
	key(left)
	insert(text or '')
pie grip [<user.text>]:
	insert("ftgrep .py ''")
	key(left)
	insert(text or '')
pie grip files [<user.text>]:
	insert("grep -rl --include='*.py' ''")
	key(left)
	insert(text or '')

# files+
bash RC:
	insert('bashrc')
	key(enter)
bash RC two:
	insert('bashrc2')
	key(enter)
plants:
	insert('plants')
	key(enter)
talon hacks:
	insert('talonhax')
	key(enter)

# programs
vim <user.text>:
	insert('vim ')
	insert(text)
blank vim:
	insert('vim')
	key(enter)
	sleep(200ms)
	key(i)
vim|them prepare:
	insert('vim ')

# navigation
"el less"|eless|LS:
	insert('ls')
	key(enter)
LA:
	insert('la')
	key(enter)
CD home:
	insert('cd ~')
	key(enter)
CD up:
	insert('cd ..')
	key(enter)
CD back:
	insert('cd -')
	key(enter)
CD root:
	insert('cd /')
	key(enter)
CD <user.text>:
	insert('cd .')
	insert(user.formatted_text(text, "SLASH_SEPARATED"))
print working directory:
	insert('pwd')
	key(enter)

# misc shell commands
red one:
	insert('red1')
	key(enter)
red two:
	insert('red2')
	key(enter)
reenter:
	key(up enter)

# git extras
get|git add:
	insert('git add .')
	key(enter)
#requires removing some dumb lines from the end of community/apps/git/git_arguments.csv
get|git push origin <user.word>:
	insert('git push origin {word}')
get|git pull upstream <user.word>:
	insert('git pull upstream {word}')
