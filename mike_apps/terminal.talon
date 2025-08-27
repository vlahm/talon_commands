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

# operators

pipe: insert(' | ')
flag <user.letters>:
	insert(' -')
	insert(user.letters)
	insert(' ')
(turbo|super|big) flag <user.text>:
	insert(' --')
	insert(user.formatted_text(text, 'DASH_SEPARATED'))
	insert(' ')

# shortcuts
clear left: key(ctrl-u)
clear right: key(ctrl-k)
clear:
	key(ctrl-k)
	key(ctrl-u)
clear output: key(ctrl-l)
cancel|interrupt: key(ctrl-c)
kill: key(ctrl-d)
mega kill: key(ctrl-x)

# grep sed awk tr

grep [<user.text>]:
	insert("grep -r ''")
	key(left)
	insert(text or '')
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
	insert("find . -name '*")
	insert(text or '')
	insert("*'")
	key(left:2)
find (Durr|directory) [<user.text>]:
	insert("find . -type d -name '")
	insert(text or "")
	insert("'")
	key(left)

# files, aliases
notes:
	insert('notes')
	key(enter)
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
sequel hacks:
	insert('sqlhax')
	key(enter)
(python hacks)|pythax:
	insert('pythax')
	key(enter)

# programs

chime <number_small> <user.letter>:
	insert('chime ')
	insert(number_small)
	insert(letter)
	key(enter)
change mode: insert('chmod ')
change owner: insert('chown ')
change group: insert('chgrp ')
itch top:
	insert('htop')
	key(enter)
pseudo apt update:
	insert('sudo apt update')
	key(enter)
pseudo apt upgrade:
	insert('sudo apt upgrade')
	key(enter)
open recent [<number_small>]:
	insert('or ')
	insert(number_small or '')
	key(enter)
vim open recent [<number_small>]:
	insert('vor ')
	insert(number_small or '')
	key(enter)
my sequel:
	insert('mysql -u root -p')
	key(enter)
(file size)|(disk usage) [<user.letters>]:
	insert('du -hcs ')
	insert(user.letters or '')
	key(tab)
less [<user.letters>]:
	insert('less ')
	insert(user.letters or '')
	key(tab enter)
code [<user.symbol_key>] [<user.letters>]:
	insert('code ')
	insert(user.symbol_key or '')
	insert(user.letters or '')
	key(tab)
removed her [<user.word>]:
	insert('rmdir ')
	insert(word)
copper [<user.word>]:
	insert('cp ')
	insert(word)
mover [<user.word>]:
	insert('mv ')
	insert(word)
ex clip: insert('xclip')
clip contents:
	insert('cat  | xclip')
	key(left:8)
text edit [<user.letters>] [<user.word>]:
	insert('vim ')
	insert(letters or '')
	insert(word or '')
	key(tab)
blank text edit:
	insert('vim')
	key(enter)
	sleep(200ms)
	key(i)
(teabox|mux) (list|lass|flash|alas) [sessions]:
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
flash [<user.letters>]:
	insert('ls ')
	insert(letters or '')
	key(tab enter)
flash:
	insert('ls')
	key(enter)
flash up:
	insert('ls ..')
	key(enter)
flash <user.word>:
	insert('ls ')
	insert(word)
	key(tab enter)
flash <user.symbol_key> [<user.letters>]:
	insert('ls ')
	insert(user.symbol_key)
	insert(user.letters or '')
	key(tab enter)
flash details:
	insert('ll')
	key(enter)
flash recent [<number_small>]:
	insert('lh ')
	insert(number_small or '')
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
#(lass|laugh) [<user.text>]:
#	insert('ls ')
#	insert(user.formatted_text(text or '', "SNAKE_CASE"))
(branch|CD) home:
	insert('c ~')
	key(enter)
(branch|CD) up:
	insert('c ..')
	key(enter)
(branch|CD) (back|previous):
	insert('c -')
	key(enter)
(branch|CD) root:
	insert('c /')
	key(enter)
fork <user.text>:
	insert('c ./')
	insert(user.formatted_text(text, "SLASH_SEPARATED"))
	key(tab enter)
branch <user.text>:
	insert('c ./')
	insert(user.formatted_text(text, "SLASH_SEPARATED"))
fork [<user.symbol_key>] [<user.letters>]:
	insert('c ./')
	insert(user.symbol_key or '')
	insert(letters or '')
	key(tab enter)
branch:
	insert('c ')
(CD|seedy) <user.text>:
	insert('cd .')
	insert(user.formatted_text(text, "SLASH_SEPARATED"))
print working directory:
	insert('pwd')
	key(enter)

# locations

hacks: key(h a x enter)
stuff: key(s t u f f enter)
downloads: insert(' ~/Downloads/')
desktop: insert(' ~/Desktop/')
dropbox: insert(' ~/Dropbox/')
warp settings:
	insert('c /home/mike/.talon/user/community/settings')
	key(enter)
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
make (dir|direct|directory) [<user.word>]:
	insert('mkdir ')
	insert(word or '')
system control: insert('systemctl ')

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

copy: key(ctrl-shift-c)
paste: key(ctrl-shift-v)
VS prep: key(v s p r e p enter)
stream pulse server:
	insert('spserv')
	key(enter)
Hubbard brooks server:
	insert('hbefserv')
	key(enter)
macro shed's server:
	insert('msserv')
	key(enter)
dukes server:
	insert('dukeserv')
	key(enter)
you en eight server:
	insert('unhserv')
	key(enter)
duke compute [cluster] server:
	insert('dccserv')
	key(enter)
last arg: insert('$_')
