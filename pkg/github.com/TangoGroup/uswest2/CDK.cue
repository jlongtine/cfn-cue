package uswest2

import "github.com/TangoGroup/fn"

CDK :: {
	Metadata :: {
		Type: "AWS::CDK::Metadata"
		Properties: Modules: string | fn.Fn
		DependsOn?:      string | [...string]
		DeletionPolicy?: "Delete" | "Retain"
	}
}
