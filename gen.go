package cdn77

//go:generate go run github.com/oapi-codegen/oapi-codegen/v2/cmd/oapi-codegen --config=config.yaml https://api.cdn77.com/v3/docs/v3.json

import (
	_ "github.com/oapi-codegen/nullable"
	_ "github.com/oapi-codegen/runtime"
)
