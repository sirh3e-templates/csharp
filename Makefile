DOTNET	:= dotnet

.PHONY: all
all: format test run

.PHONY: run
run:
	$(DOTNET) $@

.PHONY: test
test:
	$(DOTNET) $@

.PHONY: format
format:
	$(DOTNET) $@

.PHONY: restore
restore: clean
	$(DOTNET) $@

.PHONY: clean
clean:
	$(DOTNET) $@

.PHONY: watch
watch:
	$(DOTNET) $@ test
	$(DOTNET) $@ format
	$(DOTNET) $@ run