pdf:
	@echo "Generating PDFs for..."
	@while read -r dir; do \
		cd $(PROJECT_HOME)/$$dir; \
		echo "\t$$dir"; \
		pandoc README.md -o "/tmp/$$(basename "$$dir").pdf"; \
	done < CHAPTER_LIST.txt
	@cd $(PROJECT_HOME);

