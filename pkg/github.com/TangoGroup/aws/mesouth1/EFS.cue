package mesouth1

import "github.com/TangoGroup/aws/fn"

EFS :: {
	FileSystem :: {
		Type: "AWS::EFS::FileSystem"
		Properties: {
			Encrypted?: bool | fn.Fn
			FileSystemTags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
			KmsKeyId?: string | fn.Fn
			LifecyclePolicies?: [...{
				TransitionToIA: (string & ("AFTER_14_DAYS" | "AFTER_30_DAYS" | "AFTER_60_DAYS" | "AFTER_90_DAYS")) | fn.Fn
			}]
			PerformanceMode?:              (string & ("generalPurpose" | "maxIO")) | fn.Fn
			ProvisionedThroughputInMibps?: float | fn.Fn
			ThroughputMode?:               (string & ("bursting" | "provisioned")) | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	MountTarget :: {
		Type: "AWS::EFS::MountTarget"
		Properties: {
			FileSystemId:   string | fn.Fn
			IpAddress?:     string | fn.Fn
			SecurityGroups: [...(string | fn.Fn)] | fn.Fn
			SubnetId:       string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
}