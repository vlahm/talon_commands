# activate this .talon file if the current app name is "Chrome"
# you can find app names by running ui.apps() in the REPL
#app.name: Chrome
#the following "-" separates context criteria from declarations/tag-activations
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

#you can map keyboard shortcuts, not just voice commands
#key(ctrl-t:passive):
#	speech.toggle()
#	app.notify("toggle talon")

# misc

terminal:
	key(ctrl-alt-t)

dull eat:
	key(del)

copy:
	key(ctrl-c)

paste:
	key(ctrl-v)

highlight all:
	key(ctrl-a)



# windows

close window:
	key(alt-f4)

switch window:
	key(alt-tab)

switch same:
	key(alt-tilde)

# workspace

next workspace:
	key(ctrl-alt-down)

previous workspace:
	key(ctrl-alt-up)

move to next workspace:
	key(ctrl-alt-shift-down)

move to previous workspace:
	key(ctrl-alt-shift-up)

workspace:
	key(alt-f2)
	sleep(300ms)
	insert("wmctrl -s ")
	{number}
	key(enter)



