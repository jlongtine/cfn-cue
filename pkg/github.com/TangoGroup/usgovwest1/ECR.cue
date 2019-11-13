package usgovwest1

import "github.com/TangoGroup/fn"

ECR :: {
	Repository :: {
		Type: "AWS::ECR::Repository"
		Properties: {
			LifecyclePolicy?: {
				LifecyclePolicyText?: string | fn.Fn
				RegistryId?:          string | fn.Fn
			}
			RepositoryName?:       string | fn.Fn
			RepositoryPolicyText?: {
				[string]: _
			} | fn.Fn
			Tags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
}
