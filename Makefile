# vim: tabstop=8 noexpandtab

.DEFAULT_GOAL := all
.PHONY: clean

all: 
	@echo "build"
ifeq ($(GITHUB_WORKFLOW),"CI")
        @echo "This is a CI build environment, proceeding with sync stage."
        @env
else
        @echo "This is not a CI build environment, skipping the S3 sync stage."
endif
	
clean:
	@echo "clean"
