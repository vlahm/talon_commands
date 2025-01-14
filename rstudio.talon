app:Rstudio
-
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
	key(end)
	insert(' %>%')
	key(enter)


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

# borrowed from some macos cheatsheet

run that : key("ctrl-enter")
#run document : key("ctrl-alt-r")
run from top : key("ctrl-alt-b")
run to end : key("ctrl-alt-e")
run (function|funk) : key("ctrl-alt-f")
#run section : key("ctrl-alt-t")
#run previous chunks : key("ctrl-alt-p")
#run chunk : key("ctrl-alt-c")
#run next chunk : key("ctrl-alt-n")
run all : key("ctrl-shift-s")
#run knitter : key("ctrl-shift-k")
#run profiler : key("ctrl-shift-alt-p")
#jump back : key("ctrl-f9")
#jump forward : key("ctrl-f10")
#close all tabs : key("ctrl-shift-w")
close tab:  key("ctrl-w")
indent lines : key("ctrl-i")
toggle comment : key("ctrl-shift-c")
reformat comment : key("ctrl-shift-/")
#reformat R code : key("ctrl-shift-a")
line up : key("alt-up")
line down : key("alt-down")
duplicate line up : key("ctrl-alt-up")
duplicate line [down] : key("ctrl-alt-down")
select to paren : key("ctrl-shift-e")
select to matching paren : key("ctrl-shift-alt-e")
jump to matching : key("ctrl-p")
#expand selection : key("shift-alt-ctrl-up")
#reduce selection : key("shift-alt-ctrl-down")
#add cursor up : key("ctrl-alt-up")
#add cursor down : key("ctrl-alt-down")
#move active cursor up : key("ctrl-alt-shift-up")
#move active cursor down : key("ctrl-alt-shift-down")
#delete line : key("ctrl-d")
#delete word left : key("alt-backspace")
#delete word right : key("alt-delete")
assign that : key("alt--")
pipe that : key("ctrl-shift-m")
#insert knitter chunk : key("ctrl-alt-i")
fold that : key("alt-l")
unfold that : key("alt-shift-l")
fold all : key("alt-o")
unfold all : key("alt-shift-o")
#find and replace : key("ctrl-f")
find next : key("ctrl-g")
find previous : key("ctrl-shift-g")
#find with selection : key("ctrl-e")
#find in files : key("ctrl-shift-f")
run replace : key("ctrl-shift-j")
#run spell check : key("f7")
go to source : key("ctrl-1")
go to console : key("ctrl-2")
go to help : key("ctrl-3")
#go to history : key("ctrl-4")
#go to files : key("ctrl-5")
go to (plots|plot) : key("ctrl-6")
go to packages : key("ctrl-7")
go to environment : key("ctrl-8")
#go to git : key("ctrl-9")
#go to build : key("ctrl-0")
#go to terminal : key("alt-shift-t")
#go to omni : key("ctrl-.")
#go to line : key("ctrl-shift-alt-g")
#go to section : key("ctrl-shift-alt-j")
new tab: key("ctrl-shift-n")
go to tab : key("ctrl-shift-.")
previous tab:
	key(ctrl-shift-tab)
next tab:
	key(ctrl-tab)
go to first tab : key("ctrl-shift-f11")
go to last tab : key("ctrl-shift-f12")
zoom source : key("ctrl-shift-1")
(zoom|show) all : key("ctrl-shift-0")
help that : key("f1")
define that : key("f2")
previous plot : key("ctrl-alt-f11")
next plot : key("ctrl-alt-f12")
restart R session : key("ctrl-shift-f10")
#dev tools build : key("ctrl-shift-b")
#dev tools load all : key("ctrl-shift-l")
#dev tools test : key("ctrl-shift-t")
#dev tools check : key("ctrl-shift-e")
#dev tools document : key("ctrl-shift-d")
#toggle breakpoint : key("shift-f9")
debug next : key("f10")
debug step into (function|funk) : key("shift-f4")
debug finish (function|funk) : key("shift-f6")
debug continue : key("shift-f5")
debug stop : key("shift-f8")
#run git diff : key("ctrl-alt-d")
#run git commit : key("ctrl-alt-m")
