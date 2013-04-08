build:
	@rm -f bin/*
	@find src -name '*.coffee' | xargs coffee -c -o bin
	@find test -name '*.coffee' | xargs coffee -c -o test/bin
	@node_modules/uglify-js/bin/uglifyjs bin/moment-countdown.js > bin/moment-countdown.min.js

test: build
	@node_modules/mocha/bin/mocha --reporter spec test/bin/moment-countdown.spec.js

configure:
	@npm install
	@git submodule update --init --recursive
