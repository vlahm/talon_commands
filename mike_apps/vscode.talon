app:code
-
# menus and info
Renzo|runzo: key("ctrl-shift-p")
file search: key(ctrl-p)
[show] settings: key(ctrl-,)
[show] [file] explorer: key("ctrl-shift-e")
[show] [our] workspace: key("ctrl-k ctrl-shift-r")
[show] extensions: key(ctrl-shift-x)
show help: key("f1")

new tab: key("ctrl-n")
#go to tab : key("ctrl-shift-.")
previous tab: key(ctrl-shift-tab)
next tab: key(ctrl-tab)
close tab:  key("ctrl-w")
#go to first tab : key("ctrl-shift-f11")
#go to last tab : key("ctrl-shift-f12")

[show] (console|consul): key(ctrl-`)
[show] debugger: key(ctrl-shift-y)
[show] debug menu: key(ctrl-shift-d)
[show] output: key(ctrl-k ctrl-h)
[show] problems: key(ctrl-shift-alt-m)

# introspection
rename symbol: key("f2")
[peek] definition: key("ctrl-shift-f10")
go to definition: key("f12")
references: key("ctrl-f12")
find all references: key("alt-shift-f12")
hierarchy: key("alt-shift-f12")
show problems: key("ctrl-shift-alt-m")

# edit
reformat: key("ctrl-shift-i")
[insert] cursor above: key("ctrl-shift-z ctrl-up")
[insert] cursor below: key("ctrl-shift-z ctrl-down")
(copy|duplicate) [line] up: key("shift-alt-up")
(copy|duplicate) [line] down: key("shift-alt-down")
line up: key("alt-up")
line down: key("alt-down")
line above: key("shift-o")
line below: key("alt-o")
join lines: key("shift-j")
undo: key("ctrl-z")
redo: key("ctrl-y")

# move

jump back: key("ctrl-alt--")
jump forward: key("ctrl-shift--")

#jump <user.number_text>:
#	key(escape)
#	insert(number_text)
#	key(shift-g)

# marks
#depends on the vim-marks extension

set mark <user.letter>:
	key(alt-;)
	sleep(200ms)
	insert(letter)
	key(enter)
warp mark <user.letter>:
	key(ctrl-alt-`)
	sleep(200ms)
	insert(letter)
	key(enter ctrl-2 ctrl-w)

# folding

crimp section: key(ctrl-shift-[)
uncrimp section: key(ctrl-shift-])
crimp all: key(ctrl-k ctrl-8])
uncrimp all: key(ctrl-k ctrl-j)
uncrimp all except: key(ctrl-k ctrl-=)
crimp level <number_small>:
	key(ctrl:down k)
	insert(number_small)
	key(ctrl:up)

# run
run stay: key(alt-enter)
run from (top|beginning)  : key("ctrl-alt-b")
run to (end|bottom) : key("ctrl-alt-e")
run (function|funk) : key("ctrl-alt-f")
run all : key("ctrl-shift-s")
rerun last: key("ctrl-2 up enter ctrl-1")



# R-specific

are terminal: key(ctrl-r ctrl-shift-r)
reload terminal: key(ctrl-r ctrl-shift-t)
wrap function: key("ctrl-k ctrl-shift-1")
wrap loop: key("ctrl-k ctrl-shift-2")
wrap (it else|ifelse|false): key("ctrl-k ctrl-shift-3")

# untested/unorganized
indent lines : key("ctrl-i")
comet|comment : key("ctrl-/")
reformat comment : key("ctrl-shift-/")
select to paren : key("ctrl-shift-e")
select to matching paren : key("ctrl-shift-alt-e")
jump to matching : key("ctrl-p")
#add cursor up : key("ctrl-alt-up")
#add cursor down : key("ctrl-alt-down")
assign that : key("alt--")
find next : key("ctrl-g")
find previous : key("ctrl-shift-g")
run replace : key("ctrl-shift-j")
go to source : key("ctrl-1")
go to help : key("ctrl-3")
#go to history : key("ctrl-4")
#go to files : key("ctrl-5")
go to (plots|plot) : key("ctrl-6")
go to packages : key("ctrl-7")
go to environment : key("ctrl-8")
zoom source : key("ctrl-shift-1")
(zoom|show) all : key("ctrl-shift-0")
previous plot : key("ctrl-alt-f11")
next plot : key("ctrl-alt-f12")
restart R session : key("ctrl-shift-f10")
#dev tools build : key("ctrl-shift-b")
#dev tools load all : key("ctrl-shift-l")
#dev tools test : key("ctrl-shift-t")
#dev tools check : key("ctrl-shift-e")
#dev tools document : key("ctrl-shift-d")
#toggle breakpoint : key("shift-f9")
yup|you : key("f10")
debug step into (function|funk) : key("shift-f4")
debug finish (function|funk) : key("shift-f6")
debug continue : key("shift-f5")
debug stop : key("shift-f8")

# context

file path: key("ctrl-k ctrl-shift-4")
file name: key("ctrl-k ctrl-shift-5")
rel file path: key("ctrl-k ctrl-shift-6")
directory: key("ctrl-k ctrl-shift-7")
file name base: key("ctrl-k ctrl-shift-8")
