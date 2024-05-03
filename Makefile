OUTPUT_DIR := public
NODE_MODULES_DIR := node_modules
FONT := American_TextC.ttf

.PHONY: build setup help

setup:
	npm install html-minifier-terser -g
	npm install tailwindcss -g

build: $(OUTPUT_DIR)/index.html $(OUTPUT_DIR)/index.css $(OUTPUT_DIR)/main.js $(OUTPUT_DIR)/fonts/$(FONT) $(OUTPUT_DIR)/music

clear:
	rm -rf $(OUTPUT_DIR)
	rm -rf $(NODE_MODULES_DIR)

$(OUTPUT_DIR)/index.html: index.html $(OUTPUT_DIR)
	npx html-minifier-terser $< --output $@ --remove-comments --collapse-whitespace --minify-js --minify-css

$(OUTPUT_DIR)/index.css: base.css index.html $(OUTPUT_DIR)
	npx tailwindcss --input $< --output $@ --minify

$(OUTPUT_DIR)/main.js: main.js $(OUTPUT_DIR)
	npx html-minifier-terser $< --output $@ --remove-comments --collapse-whitespace --minify-js

$(OUTPUT_DIR)/fonts/$(FONT): fonts/$(FONT) $(OUTPUT_DIR)/fonts
	cp $< $@

$(OUTPUT_DIR)/music: music/ $(OUTPUT_DIR)
	cp -r $< $@

$(OUTPUT_DIR)/fonts: $(OUTPUT_DIR)
	mkdir -p $@

$(OUTPUT_DIR):
	mkdir -p $@
