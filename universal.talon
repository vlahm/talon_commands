-
# text insertions

bubble:
	insert('()')
	key(left)
box:
	insert('[]')
	key(left)
mandoline|mandolin:
	insert('{}')
	key(left)
diamond:
	insert('<>')
	key(left)
substring|substrate:
	insert("''")
	key(left)
superstring:
	insert('""')
	key(left)

# scroll

#enable his|hiss scroll:
#    user.mouse_enable_hiss_scroll = true
#disable his|hiss scroll:
#    user.mouse_enable_hiss_scroll = false

roll down:
	user.mouse_scroll_down(0.1)
	sleep(50ms)
	user.mouse_scroll_down(0.1)
	sleep(50ms)
	user.mouse_scroll_down(0.1)
	sleep(50ms)
	user.mouse_scroll_down(0.1)
	sleep(50ms)
	user.mouse_scroll_down(0.1)
roll up:
	user.mouse_scroll_up(0.6)

# copy paste select jump

copy:
	key(ctrl-c)
paste:
	key(ctrl-v)
highlight all:
	key(ctrl-a)

# keys

hold alt:
	key(alt:down)
hold shift:
	key(shift:down)
hold control:
	key(ctrl:down)
release:
	key(alt:up shift:up ctrl:up)
zinc:
	key(escape)
dull eat:
	key(del)
backspace:
	key(backspace)
lockdown:
	key(shift:down)
lockup:
	key(shift:up)
links|lynx:
	key(left)
rex|wrecked:
	key(right)
down:
	key(down)
up:
	key(up)

# custom keyboard shortcuts

key(ctrl-super-,):
	speech.toggle()
	app.notify("toggle talon")
key(ctrl-super-.):
	tracking.control_toggle()
	tracking.zoom_cancel()
	app.notify("toggle tracking")

# windows

close window:
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
minimize:
	key(super-h)
toggle windows:
	key(super)
squish window (right|rex):
	key(super-right)
squish window (left|link|lynx):
	key(super-left)

# workspaces

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

# programs

are studio:
	key(super-shift-6)
terminal:
	key(ctrl-alt-t)

# misc

bail out:
	tracking.zoom_cancel()
toggle eye tracking:
	tracking.control_toggle()
	tracking.zoom_cancel()
	app.notify("toggle tracking")
remove grid:
	user.grid_close()
search [<user.text>]:
    key(ctrl-f)
	sleep(200ms)
	insert(text or "")
suspend:
	key(super)
	sleep(250ms)
	insert("suspend")
