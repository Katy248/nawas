# NAWAS

> Not a word about С...

## Build

Requirements:

- npm
- make

### Setup environment

```bash
make setup
```

### Build

```bash
make build
cd ./public
```

### Dev build

```bash
npx tailwindcss -i ./base.css -o ./index.css --minify --watch
```
