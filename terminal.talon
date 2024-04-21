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
((tell|tall|towel)|talon) grip [<user.text>]:
	insert("ftgrep .talon ''")
	key(left)
	insert(text or '')
((tell|tall|towel)|talon) grip files [<user.text>]:
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
text edit [<user.text>]:
	insert('vim ')
	insert(text or '')
blank text edit:
	insert('vim')
	key(enter)
	sleep(200ms)
	key(i)

# navigation
flash:
	insert('ls')
	key(enter)
flash details:
	insert('ll')
	key(enter)
flash recent:
	insert('lh')
	key(enter)
flash curse:
	insert('ls -R')
	key(enter)
flash curse details:
	insert('ls -lR')
	key(enter)
flash all:
	insert('la')
	key(enter)
#("el less"|eless|LS) <user.text>:
(lass|laugh) [<user.text>]:
	insert('ls ')
	insert(user.formatted_text(text or '', "snake"))
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
branch <user.text>:
	insert('c .')
	insert(user.formatted_text(text, "SLASH_SEPARATED"))
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

