THEME=hyde

themes:
	git clone --recursive https://github.com/spf13/hugoThemes themes

serve:
	hugo server --theme=$(THEME) --buildDrafts

new:
	hugo new $1

open_local:
	open http://127.0.0.1:1313

open_web:
	open http://edthedev.github.io/edward.delaporte.us/

deploy:
	./deploy.sh

hugo_help:
	hugo help
