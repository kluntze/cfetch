# Compile cfetch
compile:
	@echo "Compiling cfetch..."
	gcc cfetch.c -o cfetch -Wall -Wextra
	@echo "Compilation finished!"


# Install cfetch.
# This will copy cfetch to /usr/bin directory.
install:
	@echo "Installing cfetch..."
	cp -v cfetch /usr/bin
	MAN="$(shell manpath|tr ':' '\n'|grep usr|grep share|grep -v local)";cp -v cfetch.1 $$MAN/man1/
	@echo "Installation finished!"


# Uninstall cfetch.
# This will delete cfetch from the /usr/bin/ directory.
uninstall:
	@echo "Uninstalling cfetch..."
	rm -rf /usr/bin/cfetch
	MAN="$(shell whereis cfetch|tr ' ' '\n'|grep man)";rm -rf $$MAN
	@echo "Uninstalling finished!"


# Clean cfetch binary.
clean:
	@echo "Cleaning..."
	rm -rf cfetch
	@echo "Finished!";
