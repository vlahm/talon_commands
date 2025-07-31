app:/positron/i
-
# menus and info
Renzo|runzo: key("ctrl-shift-p")
file search: key(ctrl-p)
[show] settings: key(ctrl-,)
[show] [file] explorer: key("ctrl-shift-e")
#[show] [our] workspace: key("ctrl-k ctrl-shift-r")
[show] extensions: key(ctrl-shift-x)
show help: key("f1")

new tab: key("ctrl-n")
#go to tab : key("ctrl-shift-.")
previous tab: key(ctrl-pageup)
next tab: key(ctrl-pagedown)
close tab:  key("ctrl-w")
#go to first tab : key("ctrl-shift-f11")
#go to last tab : key("ctrl-shift-f12")

edit: key(ctrl-1)
send it: key(enter ctrl-1)
[show] (console|consul): key(ctrl-k f)
[show] environment: key(ctrl-k v)
[show] debugger: key(ctrl-shift-y)
[show] debug menu: key(ctrl-shift-d)
[show] output: key(ctrl-k ctrl-h)
[show] problems: key(ctrl-k ctrl-shift-p)

# introspection
#rename symbol: key("f2")
find and replace: key("ctrl+shift+h")
#[peek] definition: key("ctrl-shift-alt-f10")
go to definition: key("f12")
#references: key("ctrl-f12")
[find] [all] references: key("alt-shift-f12")

# edit
realign|reformat: key("ctrl-shift-i")
[insert] cursor above: key("ctrl-shift-z ctrl-up")
[insert] cursor below: key("ctrl-shift-z ctrl-down")
#(copy|duplicate) [line] up: key("shift-alt-up")
#(copy|duplicate) [line] down: key("shift-alt-down")
line up: key("alt-up")
line down: key("alt-down")
#line above: key("shift-o")
#line below: key("alt-o")
join lines: key("shift-j")
undo: key("ctrl-z")
redo: key("ctrl-y")

# move

(previous location|position)|(jump back): key("ctrl-alt--")
(next position|location)|(jump forward): key("ctrl-shift--")
new arg: key(end left , enter)
abort command:
	key(ctrl-k f escape ctrl-shift-home backspace escape ctrl-1)

#jump <user.number_text>:
#	key(escape)
#	insert(number_text)
#	key(shift-g)

# marks
#depends on the vim-marks extension

set mark <user.letter>:
	key(ctrl-alt-l)
	sleep(200ms)
	insert(letter)
	key(enter)
warp mark <user.letter>:
	key(ctrl-alt-n)
	sleep(200ms)
	insert(letter)
	key(enter)
toggle bookmarks: key("ctrl-alt-b h")


# folding

crimp section: key(ctrl-shift-[)
uncrimp section: key(ctrl-shift-])
crimp all: key(ctrl-k ctrl-0)
uncrimp all: key(ctrl-k ctrl-j)
uncrimp all except: key(ctrl-k ctrl-=)
crimp level <number_small>:
	key(ctrl:down k)
	insert(number_small)
	key(ctrl:up)

# run
#run stay: key(alt-enter)
#run from (top|beginning)  : key("ctrl-alt-b")
#run to (end|bottom) : key("ctrl-alt-e")
#run (function|funk) : key("ctrl-alt-f")
#run all : key("ctrl-shift-s")
rerun last: key("ctrl-k f up enter ctrl-1")


# R-specific

source [this] file: key(ctrl-shift-enter)
[start] new session: key(ctrl-shift-/)
are terminal: key(ctrl-r ctrl-shift-r)
reload window: key(ctrl-r ctrl-shift-t)
restart [our] session: key("ctrl-shift-0")
wrap function: key("ctrl-k ctrl-shift-1")
wrap loop: key("ctrl-k ctrl-shift-2")
wrap (it else|ifelse|false): key("ctrl-k ctrl-shift-3")

select to paren : key("ctrl-shift-e")

# untested/unorganized
#indent lines : key("ctrl-i")
comet|comment : key("ctrl-/")
reformat comment : key("ctrl-shift-/")
#add cursor up : key("ctrl-alt-up")
#add cursor down : key("ctrl-alt-down")
#find next : key("ctrl-g")
#find previous : key("ctrl-shift-g")
#run replace : key("ctrl-shift-j")
#go to history : key("ctrl-4")
#go to files : key("ctrl-5")
go to (plots|plot) : key("ctrl-6")
#go to packages : key("ctrl-7")
previous plot : key("ctrl-alt-f11")
next plot : key("ctrl-alt-f12")
#dev tools build : key("ctrl-shift-b")
#dev tools load all : key("ctrl-shift-l")
#dev tools test : key("ctrl-shift-t")
#dev tools check : key("ctrl-shift-e")
#dev tools document : key("ctrl-shift-d")
#toggle breakpoint : key("shift-f9")
yup|you : key("f10")
#debug step into (function|funk) : key("shift-f4")
#debug finish (function|funk) : key("shift-f6")
#debug continue : key("shift-f5")
#debug stop : key("shift-f8")

# context

file path: key("ctrl-k ctrl-shift-4")
file name: key("ctrl-k ctrl-shift-5")
rel file path: key("ctrl-k ctrl-shift-6")
directory: key("ctrl-k ctrl-shift-7")
file name base: key("ctrl-k ctrl-shift-8")

