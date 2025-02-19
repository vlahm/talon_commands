app: Rstudio
app: code
and title: /\.R - /
-
settings():
	key_wait = 5

# operators

assign: insert(' <- ')
equal: insert(' = ')

equals: insert(' == ')
greater than: insert(' > ')
less than: insert(' < ')
greater equal: insert(' >= ')
less equal: insert(' <= ')
not equal|equals: insert(' != ')

plus: insert(' + ')
minus: insert(' - ')
times|multiply: insert(' * ')
divide|divided: insert(' / ')
modular|modulo: insert(' %% ')

(is in)|within: insert(' %in% ')
pipe:
	#key(end)
	#insert(' %>%')
	#key(enter)
	key(ctrl-shift-m)


# convenience/structures

install packages:
	insert("install.packages('')")
	key(left:2)
library:
	insert("library()")
	key(left)
call <user.text>:
	insert(text)
	insert('()')
	key(left)
for loop <user.letter> <user.text>:
	insert('for( in ){')
	key(left:6)
	insert(letter)
	key(right:4)
	insert(text)
	key(end enter enter backspace)
	insert('}')
	key(up end)
function setup <user.text>:
	insert(user.formatted_text(text, 'snake'))
	insert(' <- function(){')
	key(left:2)
function define:
	key(end enter enter backspace)
	insert('}')
	key(up end)

# move, select, run, etc

jump <user.number_text>:
	key(escape)
	insert(number_text)
	key(shift-g)


# common calls

set working directory:  key("s e t w d ( ) left")
(read|breed) CSV: key("r e a d _ c s v ( ' ' ) left:2")
#(read|breed) CSV:
#	insert("read_csv('')")
#	key(left:2)
