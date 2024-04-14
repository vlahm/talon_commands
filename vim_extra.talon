title: /vim/i
-
#doesn't activate command mode
#close this file: user.vim_command_mode(":q\n") 

# file operations

close this file:
	key(escape)
	insert(':q!')
	key(enter)
write this file:
	key(escape)
	insert(':w')
	key(enter)
write and close|quit:
	key(escape)
	insert(':wq')
	key(enter)

# folding

fold|folder open:
	key(escape)
	insert('zo')
fold|folder close:
	key(escape)
	insert('zc')
fold|folder open all:
	key(escape)
	insert('zR')
fold|folder close all:
	key(escape)
	insert('zM')

# text inserts

talon ki|key:
	key(end enter tab)
	insert('key()')
	key(left)
talon insert:
	key(end enter tab)
	insert("insert('')")
	key(left:2)

# selection

glint line:
	key(escape shift-v)
glint block:
	key(escape control-v)
clip line:
	key(escape y y)
snip line:
	key(escape d d)

# registers

system clip:
	key(shift-' shift-= y)
system snip:
	key(shift-' shift-= d)
system put:
	key(escape shift-' shift-= p)
#clip register :

# movement

go:
	key(escape shift-g)
retro:
	key(``)

# miscellaneous

jolt:
	key(c a w)
