# you can find app names by running ui.apps() in the REPL
app.name: Gnome-terminal
-
# key_wait increases the delay when pressing keys (milliseconds)
# this is useful if an app seems to jumble or drop keys
#settings():
#    key_wait = 4.0

# activate the global tag "browser"
#tag(): browser

# define some voice commands
#hello chrome: "hello world"
#switch tab: key(ctrl-tab)
#go to google:
#    # note: use key(cmd-t) on Mac
#    key(ctrl-t)
#    insert("google.com")
#    key(enter)

# terminal shortcuts
clear left:
	key(ctrl-u)
	
clear right:
	key(ctrl-k)

clear:
	key(ctrl-k)
	key(ctrl-u)

clear output:
	key(ctrl-l)

interrupt:
	key(ctrl-c)

kill:
	key(ctrl-d)

mega kill:
	key(ctrl-x)


# common files
bash RC:
	insert('bashrc')
	key(enter)

bash RC two:
	insert('bashrc2')
	key(enter)

plants:
	insert('plants')
	key(enter)

# opening programs
vim <user.text>:
	insert('vim ')
	insert(text)
	key(enter)
	sleep(200ms)
	key(i)

vim:
	insert('vim')
	key(enter)
	sleep(200ms)
	key(i)


#navigation

el less:
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

print working directory:
	insert('pwd')
	key(enter)
	
