package usgovwest1

import (
	"github.com/TangoGroup/aws/fn"
	"strings"
)

ServiceCatalog :: {
	CloudFormationProvisionedProduct :: {
		Type:       "AWS::ServiceCatalog::CloudFormationProvisionedProduct"
		Properties: close({
			AcceptLanguage?:           ("en" | "jp" | "zh") | fn.Fn
			NotificationArns?:         [...(string | fn.Fn)] | (string | fn.Fn)
			PathId?:                   (strings.MinRunes(1) & strings.MaxRunes(100)) | fn.Fn
			PathName?:                 (strings.MinRunes(1) & strings.MaxRunes(100)) | fn.Fn
			ProductId?:                (strings.MinRunes(1) & strings.MaxRunes(100)) | fn.Fn
			ProductName?:              (strings.MinRunes(1) & strings.MaxRunes(128)) | fn.Fn
			ProvisionedProductName?:   (strings.MinRunes(1) & strings.MaxRunes(128)) | fn.Fn
			ProvisioningArtifactId?:   (strings.MinRunes(1) & strings.MaxRunes(100)) | fn.Fn
			ProvisioningArtifactName?: string | fn.Fn
			ProvisioningParameters?:   [...close({
				Key:   (strings.MinRunes(1) & strings.MaxRunes(1000)) | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
			ProvisioningPreferences?: close({
				StackSetAccounts?:                   [...((=~#"^[0-9]{12}$"#) | fn.Fn)] | ((=~#"^[0-9]{12}$"#) | fn.Fn)
				StackSetFailureToleranceCount?:      int | fn.Fn
				StackSetFailureTolerancePercentage?: int | fn.Fn
				StackSetMaxConcurrencyCount?:        int | fn.Fn
				StackSetMaxConcurrencyPercentage?:   (>=1 & <=100) | fn.Fn
				StackSetOperationType?:              ("CREATE" | "UPDATE" | "DELETE") | fn.Fn
				StackSetRegions?:                    [...((=~#"^[a-z]{2}-([a-z]+-)+[1-9]"#) | fn.Fn)] | ((=~#"^[a-z]{2}-([a-z]+-)+[1-9]"#) | fn.Fn)
			}) | fn.If
			Tags?: [...close({
				Key:   string | fn.Fn
				Value: string | fn.Fn
			})] | fn.If
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
