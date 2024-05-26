OUTPUT_DIR := public
NODE_MODULES_DIR := node_modules
FONT := American_TextC.ttf

OUTPUT_DIRS := $(OUTPUT_DIR)/music $(OUTPUT_DIR)/icons $(OUTPUT_DIR)/fonts $(OUTPUT_DIR)/images
OUTPUT_FILES := $(OUTPUT_DIR)/favicon.ico $(OUTPUT_DIR)/manifest.json $(OUTPUT_DIR)/index.html $(OUTPUT_DIR)/index.css $(OUTPUT_DIR)/main.js

.PHONY: build setup help

setup:
	npm install html-minifier-terser -g
	npm install tailwindcss -g

build: $(OUTPUT_DIRS) $(OUTPUT_FILES)

clear:
	rm -rf $(OUTPUT_DIR)
	rm -rf $(NODE_MODULES_DIR)

$(OUTPUT_FILES) $(OUTPUT_DIRS): $(OUTPUT_DIR) 

$(OUTPUT_DIR)/index.html: index.html $(OUTPUT_DIR)
	npx html-minifier-terser $< --output $@ --remove-comments --collapse-whitespace --minify-js --minify-css

$(OUTPUT_DIR)/index.css: base.css index.html $(OUTPUT_DIR)
	npx tailwindcss --input $< --output $@ --minify

$(OUTPUT_DIR)/main.js: main.js $(OUTPUT_DIR)
	npx html-minifier-terser $< --output $@ --remove-comments --collapse-whitespace --minify-js

$(OUTPUT_DIR)/manifest.json: manifest.json
	cp $< $@

$(OUTPUT_DIR)/favicon.ico: favicon.ico
	cp $< $@

$(OUTPUT_DIR)/music: 
	cp -r music $@

$(OUTPUT_DIR)/fonts: 
	cp -r fonts $@

$(OUTPUT_DIR)/icons: 
	cp -r icons $@

$(OUTPUT_DIR)/images:
	cp -r images $@

$(OUTPUT_DIR):
	mkdir -p $@
