app.name: Gnome-terminal
app.name: /konsole/i
and not title: /vim/i
-

# git extras

create gitignore:
	insert('touch .gitignore')
	key(enter)
edit gitignore:
	insert('vim .gitignore')
	key(enter)
(get|git) (slug|slog):
	insert('git slog')
	key(enter)
(get|git) add:
	insert('git add .')
	key(enter)
#requires removing some dumb lines from the end of community/apps/git/git_arguments.csv
(get|git) push origin <user.word>:
	insert('git push origin {word}')
(get|git) pull upstream <user.word>:
	insert('git pull upstream {word}')
