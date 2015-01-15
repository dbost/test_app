all: clean deps build eunit ct generate

clean:
	./rebar -r clean

deps:
	./rebar -r get-deps

build:
	./rebar -r compile

eunit:
	./rebar -r eunit skip_deps=true

ct:
	./rebar -r ct

generate:
	./rebar generate
