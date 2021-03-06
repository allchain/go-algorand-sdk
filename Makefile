SRCPATH := $(GOPATH)/src/github.com/algorand/go-algorand-sdk
TEST_SOURCES := $(shell cd $(SRCPATH) && go list ./...)

lint:
	golint `go list ./... | grep -v /vendor/`

build:
	cd $(SRCPATH) && go test -run xxx_phony_test $(TEST_SOURCES) 
