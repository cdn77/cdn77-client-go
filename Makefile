.PHONY: download-spec generate clean all

SPEC_URL ?= https://openapi.invalid/v3/docs/openapi.json
SPEC_FILE = openapi-spec.json

all: generate

download-spec:
	@echo "Downloading OpenAPI specification..."
	@curl -fsSL $(SPEC_URL) -o $(SPEC_FILE)
	@echo "Specification saved to $(SPEC_FILE)"

generate: download-spec
	@echo "Generating client code..."
	@go run github.com/oapi-codegen/oapi-codegen/v2/cmd/oapi-codegen --config=config.yaml $(SPEC_FILE)
	@echo "Code generation complete"

clean:
	@rm -f $(SPEC_FILE) client.gen.go
	@echo "Cleaned generated files"
