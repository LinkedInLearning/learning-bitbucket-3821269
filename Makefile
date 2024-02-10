README_FILES := $(shell find . -name 'README.md' -not -path './.git/*')

hello:
	@echo "This makefile has the following tasks:"
	@echo "\tspellcheck  - spell check README files"
	@echo "\tpdf         - generate PDFs for README files"
	@echo "\tclean       - remove backup files"
	@echo "\tall         - run all tasks (except clean)"

all: spellcheck pdf
	@echo "Done."

spellcheck:
	@echo "Spell checking README files..."
	@for file in $(README_FILES); do \
		echo "\t$$file"; \
		aspell check --mode=markdown --lang=en $$file; \
	done

pdf:
	@echo "Generating PDFs..."
	@while read -r dir; do \
		$(MAKE) --no-print-directory --directory $(PROJECT_HOME)/$$dir; \
	done < CHAPTER_LIST.txt
	@cd $(PROJECT_HOME);

clean:
	find . -type f -name \*.bak -exec rm -vf {} \;

nuke: clean
	find /tmp/ -type f -name \*.pdf -exec rm -vf {} \;
