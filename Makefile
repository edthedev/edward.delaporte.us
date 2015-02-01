THEME=hyde

themes:
	git clone --recursive https://github.com/spf13/hugoThemes themes

serve:
	hugo server --theme=$(THEME) --buildDrafts

new:
	hugo new $1

open:
	open http://edthedev.github.io/edward.delaporte.us/

deploy:
	./deploy.sh
