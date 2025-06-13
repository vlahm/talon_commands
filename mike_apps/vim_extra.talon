title: /vim/i
-
#doesn't activate command mode
#close this file: user.vim_command_mode(":q\n") 

# insertions

line above: key(escape shift-o)
line below: key(escape o)
control: insert('ctrl-')
Glynn sort <user.keys>:
	key(shift-i)
	insert(keys)
	key(escape)

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

uncrimp section:
	key(escape)
	insert('zo')
crimp section:
	key(escape)
	insert('zc')
uncrimp all:
	key(escape)
	insert('zR')
crimp all:
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
pipe: insert('|')

# selection, line operations

glint line:
	key(escape shift-v)
glint block:
	key(escape ctrl-v)
clip line:
	key(escape y y)
snip line:
	key(escape d d)
reselect: key(escape ` [ v ` ])

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
jolt: key(escape c a w)
slap: key(escape a end enter)
no highlight: key(escape : n o h enter)
