# Installation script
INSTALL_SCRIPT = install.sh

# Directory containing the files to be removed
FILES_DIRECTORY = /nfs/homes/$(USER)/.local/bin

# Files to be removed
FILES_TO_REMOVE = cpp cppl dpd pkm bap

# Define targets and their actions
install: check_install_script
	@echo "Installing..."
	@./$(INSTALL_SCRIPT)

check_install_script:
	echo "Checking install.sh..."
	@if [ ! -x $(INSTALL_SCRIPT) ]; then \
		chmod +x $(INSTALL_SCRIPT); \
		echo "Added execute permission to $(INSTALL_SCRIPT)"; \
	fi

remove:
	@echo "Removing..."	
	# Remove files from the directory
	@for file in $(FILES_TO_REMOVE); do \
		if [ -e "$(FILES_DIRECTORY)/$$file" ]; then \
			rm "$(FILES_DIRECTORY)/$$file"; \
		fi; \
	done

re: remove
	make install

help: 
	@echo "\n| Letter | Hour | Letter | Hour |\n\
|--------|------|--------|------|\n\
| a      | 1    | n      | 14   |\n\
| b      | 2    | o      | 15   |\n\
| c      | 3    | p      | 16   |\n\
| d      | 4    | q      | 17   |\n\
| e      | 5    | r      | 18   |\n\
| f      | 6    | s      | 19   |\n\
| g      | 7    | t      | 20   |\n\
| h      | 8    | u      | 21   |\n\
| i      | 9    | v      | 22   |\n\
| j      | 10   | w      | 23   |\n\
| k      | 11   | x      | 0    |\n\
| l      | 12   | y      | 1    |\n\
| m      | 13   | z      | 2    |\n\
|--------|------|--------|------|\n"\

.PHONY: install check_install_script remove re help
