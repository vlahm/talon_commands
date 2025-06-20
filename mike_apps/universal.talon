-
settings():
	key_wait = 8

# text insertions

stopper: key('. space')
commerce: key(', space')
next (ard|erg|arg): key(', enter')
onward: key('right space')
eduardo: key('right enter')
bubble:
	insert('()')
	key(left)
box:
	insert('[]')
	key(left)
dub box:
	insert('[[]]')
	key(left:2)
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
my email: insert('vlahm13@gmail.com')
my first name: insert('Mike')
my first name full: insert('Michael')
my last name: insert('Vlah')
my address: insert('125 E 200 N Apt 1')
my phone: insert('412-735-3706')

# scroll/movement

#enable his|hiss scroll:
#    user.mouse_enable_hiss_scroll = true
#disable his|hiss scroll:
#    user.mouse_enable_hiss_scroll = false

roll down:
	user.mouse_scroll_down(1)
	sleep(50ms)
	user.mouse_scroll_down(1)
	sleep(50ms)
	user.mouse_scroll_down(1)
	sleep(50ms)
	user.mouse_scroll_down(1)
	sleep(50ms)
	user.mouse_scroll_down(1)
roll up:
	user.mouse_scroll_up(5)
flip: key(pagedown)
backlit|backflip: key(pageup)

# copy paste select jump

term copy: key(ctrl-shift-c)
term paste: key(ctrl-shift-v)
copy: key(ctrl-c)
paste: key(ctrl-v)
highlight all: key(ctrl-a)
(select|highlight) word: key(ctrl-left ctrl-shift-right)

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
blinks|lynx:
	key(left)
rex|wrecked:
	key(right)
down:
	key(down)
up:
	key(up)
dell|dale: key(delete)
capslock: key(capslock)


# custom keyboard shortcuts

key(ctrl-super-,):
	speech.toggle()
	app.notify("toggle talon")
key(ctrl-super-.):
	tracking.control_toggle()
	tracking.zoom_cancel()
	app.notify("toggle tracking")
key(super-3):
	user.switcher_launch('/usr/bin/env BAMF_DESKTOP_FILE_HINT=/var/lib/snapd/desktop/applications/firefox_firefox.desktop /snap/bin/firefox ')
#key(super-7):
#	mimic('launch slack')

# mouse

center mouse:
	key(super-f6)
focus mouse:
	key(super-f5)
# windows

show windows:
	key(ctrl-f9)
show all windows:
	key(ctrl-f10)
show same windows:
	key(ctrl-f7)
close window:
	key(alt-f4)
switch (window|windows):
#	key(alt:down)
#	key(tab)
#	sleep(500ms)
#	key(tab)
#	key(alt:up)
	key(alt-tab)
switch (window|windows) rev:
	key(alt-shift-tab)
switch same:
	key(alt-`)
switch same rev:
	key(alt-shift-`)
switch same (all|alt|far|global):
	key(super-`)
switch same (all|alt|far|global) rev:
	key(super-shift-`)
move window left:
	key(super-shift-left)
move window right:
	key(super-shift-right)
maximize:
	key(super-shift-up)
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
move to workspace <number_small>:
	key(ctrl:down alt:down shift:down)
	insert(number_small)
	key(ctrl:up alt:up shift:up)
show all workspaces:
	key(ctrl-f8)
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
	sleep(500ms)
	insert(text or "")
suspend:
	key(super)
	sleep(250ms)
	insert("suspend")
night color:
	key(super-alt-shift-n)


# system

lock session:
	key(super-l)


# mishears

clone that fine: insert('')
bang: insert('')
