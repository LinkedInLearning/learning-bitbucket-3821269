README_FILES := $(shell find . -name 'README.md' -not -path '*/node_modules/*' -not -path './.git/*')

hello:
	@echo "This makefile has the following tasks:"
	@echo "\tspellcheck  - spell check README files"
	@echo "\tpdf         - generate PDFs for README files"
	@echo "\tclean       - remove backup files"
	@echo "\tall         - run all tasks"

all: spellcheck pdf clean
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
		echo "\t$(PROJECT_HOME)/$$dir"; \
		cd $(PROJECT_HOME)/$$dir; \
		pandoc README.md -o "/tmp/$$(basename "$$dir").pdf"; \
	done < CHAPTER_LIST.txt
	@cd $(PROJECT_HOME);

clean:
	find . -name '*.bak' -exec rm -vf {} \;
