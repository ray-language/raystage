RAY ?= ray

.PHONY: run dev check test native smoke

run:      ## run in the VM (needs raylang >= 1.24)
	@$(RAY) run

dev:
	@$(RAY) dev

check:
	@$(RAY) check

test:
	@$(RAY) test

native:
	@$(RAY) build --native --release

smoke:    ## headless: splash + main window + kinds, no display needed
	@RAY_UI_BACKEND=headless RAY_UI_TRACE=1 RAY_UI_EXIT_AFTER_MS=2500 $(RAY) run 2>&1 | grep -E "\[ui\] (open|window|menu)" | head -8
