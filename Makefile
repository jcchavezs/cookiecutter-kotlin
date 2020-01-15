
VALIDATE_PATH = "./validate"

validate:
	@-rm -rf $(VALIDATE_PATH)
	cookiecutter --no-input . -o $(VALIDATE_PATH)
	cd $(VALIDATE_PATH)/kotlin-app; mvn clean install
	