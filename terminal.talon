# you can find app names by running ui.apps() in the REPL
app.name: Gnome-terminal
and not title: /vim/i
-
# notes
#key_wait increases the delay when pressing keys (milliseconds)

#this is useful if an app seems to jumble or drop keys
#settings():
#    key_wait = 4.0

#activate the global tag "browser"
#tag(): browser

# examples
#hello chrome: "hello world"
#switch tab: key(ctrl-tab)
#go to google:
#    # note: use key(cmd-t) on Mac
#    key(ctrl-t)
#    insert("google.com")
#    key(enter)

# terminal syntax helpers
string:
	insert("''")
	key(left)
dub string:
	insert('""')
	key(left)

# terminal shortcuts
clear left: key(ctrl-u)
clear right: key(ctrl-k)
clear:
	key(ctrl-k)
	key(ctrl-u)
clear output: key(ctrl-l)
interrupt: key(ctrl-c)
kill: key(ctrl-d)
mega kill: key(ctrl-x)

# common files and aliases
bash RC:
	insert('bashrc')
	key(enter)
bash RC two:
	insert('bashrc2')
	key(enter)
plants:
	insert('plants')
	key(enter)
red one:
	insert('red1')
	key(enter)
red two:
	insert('red2')
	key(enter)
talon hacks:
	insert('talonhax')
	key(enter)
hefty grip:
	insert('ftgrep .')
# talon-specific locations
edit talon keys:
	insert('vim /home/mike/.talon/user/community/core/keys/keys.py')
	key(enter)
edit talon formatters:
	insert('vim /home/mike/.talon/user/community/core/text/formatters.py')
	key(enter)
# opening programs
vim <user.text>:
	insert('vim ')
	insert(text)
	#key(enter)
	#sleep(200ms)
	#key(i)
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
# git extras
#get status:
#	insert('git status')
#	key(enter)
get|git add:
	insert('git add .')
	key(enter)
#requires removing some dumb lines from the end of community/apps/git/git_arguments.csv
get|git push origin <user.word>:
	insert('git push origin {word}')
get|git pull upstream <user.word>:
	insert('git pull upstream {word}')
