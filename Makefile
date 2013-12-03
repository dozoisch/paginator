# The goal of this Makefile is only to provide an easy way for me to produce the minified file version in pre-commit
PREAMBLE = MIT Hugo Dozois-Caouette 2013

all:
	# Minimizing the files...
	@$$(VER=$$(cat ./bower.json | perl -ne 'print $$1 if /"ver[^"]*":\s*"(\d\.\d\.\d)"/');\
	PREAMBLE="/*! ${PREAMBLE} $$VER */";\
	uglifyjs jquery.paginate.js -c -m -r "\$$" --preamble "$$PREAMBLE" > jquery.paginate.min.js;\
	(echo "$$PREAMBLE" && uglifycss jquery.paginate.css;) > jquery.paginate.min.css;)
	# Done!

.PHONY: all