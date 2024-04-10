title: /vim/i
-
#doesn't activate command mode
#close this file: user.vim_command_mode(":q\n") 

# vim commands
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
	key(end space)
	insert('key()')
	key(left)
talon insert:
	key(end space)
	insert("insert('')")
	key(left:2)
