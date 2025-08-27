app.name: /firefox/
-

clear (cash|cache):
	key(ctrl-shift-delete)

clicker:
	key(escape)
	insert('f')

address|(url [bar]):
	browser.focus_address()

(address copy)|(url copy)|(copy address)|(copy url):
	browser.focus_address()
	sleep(50ms)
	edit.copy()

go home:
	browser.go_home()

[go] forward:
	browser.go_forward()

go (back|backward):
	browser.go_back()

go to {user.website}:
	browser.go(website)

go private:
	browser.open_private_window()

bookmark show:
	browser.bookmarks()

bookmark bar:
	browser.bookmarks_bar()

bookmark it:
	browser.bookmark()

bookmark tabs:
	browser.bookmark_tabs()

refresh|reload:
	browser.reload()

(refresh|reload) hard:
	browser.reload_hard()

show downloads:
	browser.show_downloads()

show extensions:
	browser.show_extensions()

show history:
	browser.show_history()

show cache:
	browser.show_clear_cache()

dev tools:
	browser.toggle_dev_tools()

new tab:
	key(ctrl-t)

close tab:
	key(ctrl-w)

recover tab:
	key(ctrl-shift-t)

next tab:
	key(ctrl-tab)

previous tab:
	key(ctrl-shift-tab)

jay down:
	key(j)
	sleep(50ms)
	key(j)
	sleep(50ms)
	key(j)
	sleep(50ms)
	key(j)

# prevent mishears

close air:
	key(shift)


