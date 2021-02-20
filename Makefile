.PHONY: build serve watch

build:
	jupyter-book build book

watch:
	nodemon -w './**' -e yml,md,ipynb --exec jupyter-book build book

serve:
	cd _build/html; python -m http.server 9000
