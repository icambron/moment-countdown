PATH := node_modules/.bin:$(PATH)
SHELL := /bin/bash

build:
	@find src -name '*.coffee' | xargs coffee -c -o dist
	@find test -name '*.coffee' | xargs coffee -c -o test
	@uglifyjs -o dist/moment-countdown.min.js dist/moment-countdown.js

test: build
	@mocha --reporter spec

configure:
	@npm install
	@git submodule update --init --recursive
