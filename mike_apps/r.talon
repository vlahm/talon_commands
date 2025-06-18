app: Rstudio
app: code
and title: /\.R - /
app: Positron
and title: /\.R - /
app: code
and title: /R Interactive/
app: Positron
and title: /R Interactive/
-
settings():
	key_wait = 8

# actions

run (that|line|ten): key("ctrl-enter")
run <number_small>: user.ctrl_enter_repeat(number_small)
#debug listen:
#	key(ctrl-1 ctrl-`)
#	insert('library(vscDebugger)')
#	key(enter)
#	insert('.vsc.listen()')
#	key(enter)
debug this:
	key(ctrl-c ctrl-1 ctrl-k f)
	insert('debugonce()')
	key(left ctrl-v enter ctrl-1)

# operators

assign: insert(' <- ')
global assign: insert(' <<- ')
equal: insert(' = ')

equals: insert(' == ')
greater than: insert(' > ')
less than: insert(' < ')
greater equal: insert(' >= ')
less equal: insert(' <= ')
not equal|equals: insert(' != ')

not: insert('!')
double not: insert('!!')
triple not: insert('!!!')
true: insert('TRUE')
false: insert('FALSE')

plus: insert(' + ')
minus: insert(' - ')
times|multiply: insert(' * ')
divide|divided: insert(' / ')
modular|modulo: insert(' %% ')

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
	insert('()')
	key(left)
comment section:
	insert(' ####')
	key(enter:2)
for loop <user.letter> <user.text>:
	insert('for( in ){')
	key(left:6)
	insert(letter)
	key(right:4)
	insert(text)
	key(end enter enter backspace)
	insert('}')
	key(up end)
function setup [<user.letters>] [<user.text>]:
	insert(user.letters or '')
	insert(user.formatted_text(text or '', 'SNAKE_CASE'))
	insert(' <- function(){')
	key(left:2)
function define:
	key(end enter enter backspace)
	insert('}')
	key(up end)

# common expressions

dev off:
	insert('dev.off()')
	key(enter)
set working directory:  key("s e t w d ( ) left")
get working directory:
	key("g e t w d ( )")
	key(enter)
(read|breed) CSV: key("r e a d _ c s v ( ' ' ) left:2")
right CSV:
	insert("write_csv()")
	key(left)
install packages:
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
