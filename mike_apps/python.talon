app: code
and title: /\.py - /
-
settings():
	key_wait = 8

# actions

run (that|line): key("shift-enter")

# operators

assign: insert(' = ')
equal: insert('=')

equals: insert(' == ')
greater than: insert(' > ')
less than: insert(' < ')
greater equal: insert(' >= ')
less equal: insert(' <= ')
not equal|equals: insert(' != ')

not: insert('!')
true: insert('True')
false: insert('False')

plus: insert(' + ')
minus: insert(' - ')
times|multiply: insert(' * ')
power: insert(' ** ')
divide|divided: insert(' / ')
floor divide: insert(' // ')
modular|modulo: insert(' % ')

bit or: insert(' | ')
bit and: insert(' & ')
short or: insert(' || ')
short and: insert(' && ')

(get|use) method: insert('::')
internal method: insert(':::')
baubles: key('% % left')

function of: insert(' ~ ')
(is in)|within: insert(' %in% ')
pipe:
	#key(end)
	#insert(' %>%')
	#key(enter)
	key(ctrl-shift-m)


# convenience/structures

advect:
	insert('c()')
	key(left)
call <user.text>:
	insert(text)
	insert('(')
#	key(left)
comment section:
	insert(' ####')
	key(enter:2)
#for loop <user.letter> <user.text>:
#	insert('for( in ){')
#	key(left:6)
#	insert(letter)
#	key(right:4)
#	insert(text)
#	key(end enter enter backspace)
#	insert('}')
#	key(up end)
#function setup <user.text>:
#	insert(user.formatted_text(text, 'SNAKE_CASE'))
#	insert(' <- function(){')
#	key(left:2)
#function define:
#	key(end enter enter backspace)
#	insert('}')
#	key(up end)

# common expressions

set working directory:  key("s e t w d ( ) left")
(read|breed) CSV: key("r e a d _ c s v ( ' ' ) left:2")
right CSV:
	insert("write_csv('')")
	key(left:2)
install (packages:
	insert("install.packages('')")
	key(left:2)
library|libo:
	insert("library()")
	key(left)
anna|ennay: insert('NA')
null: insert('NULL')
not a number: insert('NaN')
infinity: insert('Inf')
ellipsis: insert('...')
as date: insert('as.Date(')
as posix: insert('as.POSIXct(')

# mask

bang: insert('')
