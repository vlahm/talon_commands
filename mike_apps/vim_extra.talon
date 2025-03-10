title: /vim/i
-
#doesn't activate command mode
#close this file: user.vim_command_mode(":q\n") 

# insertions

line above: key(escape shift-o)
line below: key(escape o)

# file operations

close and discard:
	key(escape)
	insert(':q!')
	key(enter)
close this file:
	key(escape)
	insert(':q')
	key(enter)
write this file:
	key(escape)
	insert(':w')
	key(enter)
write and (close|quit):
	key(escape)
	insert(':wq')
	key(enter)

# folding

crimp|crap:
	key(escape)
	insert('zo')
(crimp|crap) close:
	key(escape)
	insert('zc')
(crimp|crap) open all:
	key(escape)
	insert('zR')
(crimp|crap) close all:
	key(escape)
	insert('zM')

# text inserts

#	talon (ki|key):
#		key(end enter tab)
#		insert('key()')
#		key(left)
compact (ki|key):
	key(end space)
	insert('key()')
	key(left)
compact insert:
	key(end space)
	insert("insert('')")
	key(left:2)
(tall|tell|towel) (ki|key):
	key(end enter tab)
	insert('key()')
	key(left)
(tall|tell|towel) insert:
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
go top:
	key(escape g g)
go <user.number_string>:
	key(escape)
	insert(number_string)
	key(shift-g)
retro:
	key(``)
fade:
	key(shift-f)
# miscellaneous

(join lines)|joint: key(escape shift-j)
jolt: key(escape right c a w)
slap: key(escape a end enter)
