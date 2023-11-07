title: /^tmux/

-
mux split horizontal:
    key(ctrl-b)
    key(%)
mux split vertical:
    key(ctrl-b)
    key(")
mux next pane:
    key(ctrl-b)
    key(o)
mux move <user.arrow_key>:
    key(ctrl-b)
    key(arrow_key)
mux close pane:
    key(ctrl-b)
    key(x)
#Say a number right after this command, to switch to pane
mux pane numbers:
    key(ctrl-b)
    key(q)
mux toggle pane:
	key(ctrl-b)
	key(z)
mux scroll enable:
	key(ctrl-b)
	key([)
mux save session:
	key(ctrl-b)
	key(ctrl-s)
mux reload session:
	key(ctrl-b)
	key(ctrl-r)
