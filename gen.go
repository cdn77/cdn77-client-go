package cdn77

//go:generate go run github.com/oapi-codegen/oapi-codegen/v2/cmd/oapi-codegen --config=config.yaml openapi-spec.json

import (
	_ "github.com/oapi-codegen/nullable"
	_ "github.com/oapi-codegen/runtime"
)
