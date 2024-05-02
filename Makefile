OUTPUT_DIR := public

.PHONY: build setup help

setup:
	npm install
	npm install html-minifier-terser -g
	npm install tailwindcss -g

build: $(OUTPUT_DIR)/index.html $(OUTPUT_DIR)/index.css $(OUTPUT_DIR)/main.js $(OUTPUT_DIR)/fonts $(OUTPUT_DIR)/music

clear:
	rm -rf $(OUTPUT_DIR)

$(OUTPUT_DIR)/index.html: index.html $(OUTPUT_DIR)
	npx html-minifier-terser $< --output $@ --remove-comments --collapse-whitespace --minify-js --minify-css

$(OUTPUT_DIR)/index.css: base.css index.html $(OUTPUT_DIR)
	npx tailwindcss --input $< --output $@ --minify

$(OUTPUT_DIR)/main.js: main.js $(OUTPUT_DIR)
	npx html-minifier-terser $< --output $@ --remove-comments --collapse-whitespace --minify-js

$(OUTPUT_DIR)/fonts: fonts/ $(OUTPUT_DIR)
	cp -r $< $@

$(OUTPUT_DIR)/music: music/ $(OUTPUT_DIR)
	cp -r $< $@

$(OUTPUT_DIR):
	mkdir -p $@
