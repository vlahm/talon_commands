#doesn't activate command mode
#close this file: user.vim_command_mode(":q\n") 
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

fold open:
	key(escape)
	insert('zo')

fold close:
	key(escape)
	insert('zc')

fold open all:
	key(escape)
	insert('zR')

fold close all:
	key(escape)
	insert('zM')

