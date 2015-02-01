THEME=journal
#herring-cove
#html5
#hugo-incorporated
#hugo-uno
#hugoscroll
#hyde
#hyde-x
#journal
#lanyon
#liquorice
#persona
#purehugo
#redlounge
#simple-a
#stou-dk-theme
#tinyce

themes:
	git clone --recursive https://github.com/spf13/hugoThemes themes

update:
	hugo --theme=$(THEME)

serve: update
	# hugo server --theme=$(THEME) --buildDrafts
	hugo server --theme=$(THEME)

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
