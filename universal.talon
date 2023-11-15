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
key(ctrl-super-,):
	speech.toggle()
	app.notify("toggle talon")

key(ctrl-super-.):
	tracking.control_toggle()
	app.notify("toggle tracking")

toggle eye tracking:
	tracking.control_toggle()
	app.notify("toggle tracking")

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

search:
    key(ctrl-f)

search:
    key(ctrl-f) insert("{text}")

backspace:
	key(backspace)

# windows

close [window]:
	key(alt-f4)

switch (window|windows):
	key(alt:down)
	key(tab)
	sleep(500ms)
	key(tab)
	key(alt:up)

switch same:
	key(alt-~)

move window left:
	key(super-shift-left)

move window right:
	key(super-shift-right)

maximize:
	key(super-up)

toggle windows:
	key(super)

# workspace

next workspace:
	key(ctrl-alt-down)

previous workspace:
	key(ctrl-alt-up)

move to next workspace:
	key(ctrl-alt-shift-down)

move to previous workspace:
	key(ctrl-alt-shift-up)

#workspace:
#	key(alt-f2)
#	sleep(300ms)
#	insert("wmctrl -s ")
#	{number}
#	key(enter)

# movement

roll down:
	user.mouse_scroll_down(0.7)
roll up:
	user.mouse_scroll_up(0.7)
bail out:
	tracking.zoom_cancel()

