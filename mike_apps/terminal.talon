# you can find app names by running ui.apps() in the REPL
title: /Konsole/i
title: /Gnome-terminal/i
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

# find
find name [<user.text>]:
	insert("find . -name '")
	insert(text or '')
	insert("'")
	key(left)
find (Durr|directory) [<user.text>]:
	insert("find . -type d -name '")
	insert(text or "")
	insert("'")
	key(left)

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
(teabox|mux) (list|lass|flash|alas):
	insert('tmux ls')
	key(enter)
(teabox|mux) new session [<user.letter>]:
	insert('tmux new -s ')
	insert(letter)
	key(enter)
(teabox|mux) attach session [<user.letter>]:
	insert('tmux attach -t ')
	insert(letter)
	key(enter)
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
CD (back|previous):
	insert('cd -')
	key(enter)
CD root:
	insert('cd /')
	key(enter)
branch <user.text>:
	insert('c ./')
	insert(user.formatted_text(text, "SLASH_SEPARATED"))
branch:
	insert('c ')
CD <user.text>:
	insert('cd .')
	insert(user.formatted_text(text, "SLASH_SEPARATED"))
print working directory:
	insert('pwd')
	key(enter)
# locations
warp talon:
	insert('c ~/.talon/user')
	key(enter)
warp downloads:
	insert('c ~/Downloads')
	key(enter)
warp desktop:
	insert('c ~/Desktop')
	key(enter)
warp dropbox:
	insert('c ~/Dropbox')
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
pseudo|sudo:
	insert('sudo ')
(pseudo|sudo) (sue|two):
	insert('sudo su')
	key(enter)
speech [<user.text>]:
    insert("spd-say ''")
	key(left)
	insert(user.text or '')

# audio-visual

audio config <number_small>:
	insert('aud')
	insert(number_small)
	key(enter)
display config <number_small>:
	insert('disp')
	insert(number_small)
	key(enter)
# turbo misc

control: insert('ctrl-')
copy: key(ctrl-shift-c)
paste: key(ctrl-shift-v)
