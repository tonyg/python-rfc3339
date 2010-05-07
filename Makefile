all: rfc3339.html

%.html: %.py
	pydoc -w $*