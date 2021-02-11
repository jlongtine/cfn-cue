package usgovwest1

import (
	"github.com/TangoGroup/aws/fn"
	"strings"
)

SSM :: {
	Association :: {
		Type:       "AWS::SSM::Association"
		Properties: close({
			ApplyOnlyAtCronInterval?:       bool | fn.Fn
			AssociationName?:               (=~#"^[a-zA-Z0-9_\-.]{3,128}$"#) | fn.Fn
			AutomationTargetParameterName?: (strings.MinRunes(1) & strings.MaxRunes(50)) | fn.Fn
			ComplianceSeverity?:            ("CRITICAL" | "HIGH" | "MEDIUM" | "LOW" | "UNSPECIFIED") | fn.Fn
			DocumentVersion?:               (=~#"([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"#) | fn.Fn
			InstanceId?:                    (=~#"(^i-(\w{8}|\w{17})$)|(^mi-\w{17}$)"#) | fn.Fn
			MaxConcurrency?:                (strings.MinRunes(1) & strings.MaxRunes(7) & (=~#"^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"#)) | fn.Fn
			MaxErrors?:                     (strings.MinRunes(1) & strings.MaxRunes(7) & (=~#"^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"#)) | fn.Fn
			Name:                           (=~#"^[a-zA-Z0-9_\-.:/]{3,200}$"#) | fn.Fn
			OutputLocation?:                close({
				S3Location?: close({
					OutputS3BucketName?: (strings.MinRunes(3) & strings.MaxRunes(63)) | fn.Fn
					OutputS3KeyPrefix?:  string | fn.Fn
					OutputS3Region?:     (strings.MinRunes(3) & strings.MaxRunes(20)) | fn.Fn
				}) | fn.If
			}) | fn.If
			Parameters?: {
				[string]: close({
					ParameterValues: [...(string | fn.Fn)] | (string | fn.Fn)
				})
			} | fn.If
			ScheduleExpression?: (strings.MinRunes(1) & strings.MaxRunes(256)) | fn.Fn
			SyncCompliance?:     ("AUTO" | "MANUAL") | fn.Fn
			Targets?:            [...close({
				Key:    string | fn.Fn
				Values: [...(string | fn.Fn)] | (string | fn.Fn)
			})] | fn.If
			WaitForSuccessTimeoutSeconds?: (>=15 & <=172800) | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Document :: {
		Type:       "AWS::SSM::Document"
		Properties: close({
			Content: {
				[string]: _
			} | fn.Fn
			DocumentType?: string | fn.Fn
			Name?:         string | fn.Fn
			Tags?:         [...close({
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
	MaintenanceWindow :: {
		Type:       "AWS::SSM::MaintenanceWindow"
		Properties: close({
			AllowUnassociatedTargets: bool | fn.Fn
			Cutoff:                   (>=0 & <=23) | fn.Fn
			Description?:             string | fn.Fn
			Duration:                 (>=1 & <=24) | fn.Fn
			EndDate?:                 string | fn.Fn
			Name:                     string | fn.Fn
			Schedule:                 string | fn.Fn
			ScheduleOffset?:          int | fn.Fn
			ScheduleTimezone?:        string | fn.Fn
			StartDate?:               string | fn.Fn
			Tags?:                    [...close({
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
	MaintenanceWindowTarget :: {
		Type:       "AWS::SSM::MaintenanceWindowTarget"
		Properties: close({
			Description?:      string | fn.Fn
			Name?:             string | fn.Fn
			OwnerInformation?: string | fn.Fn
			ResourceType:      string | fn.Fn
			Targets:           [...close({
				Key:     string | fn.Fn
				Values?: [...(string | fn.Fn)] | (string | fn.Fn)
			})] | fn.If
			WindowId: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Parameter :: {
		Type:       "AWS::SSM::Parameter"
		Properties: close({
			AllowedPattern?: string | fn.Fn
			DataType?:       string | fn.Fn
			Description?:    string | fn.Fn
			Name?:           string | fn.Fn
			Policies?:       string | fn.Fn
			Tags?:           {
				[string]: _
			} | fn.Fn
			Tier?: string | fn.Fn
			Type:  string | fn.Fn
			Value: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	ResourceDataSync :: {
		Type:       "AWS::SSM::ResourceDataSync"
		Properties: close({
			BucketName?:    string | fn.Fn
			BucketPrefix?:  string | fn.Fn
			BucketRegion?:  string | fn.Fn
			KMSKeyArn?:     string | fn.Fn
			S3Destination?: close({
				BucketName:    string | fn.Fn
				BucketPrefix?: string | fn.Fn
				BucketRegion:  string | fn.Fn
				KMSKeyArn?:    string | fn.Fn
				SyncFormat:    string | fn.Fn
			}) | fn.If
			SyncFormat?: string | fn.Fn
			SyncName:    string | fn.Fn
			SyncSource?: close({
				AwsOrganizationsSource?: close({
					OrganizationSourceType: string | fn.Fn
					OrganizationalUnits?:   [...(string | fn.Fn)] | (string | fn.Fn)
				}) | fn.If
				IncludeFutureRegions?: bool | fn.Fn
				SourceRegions:         [...(string | fn.Fn)] | (string | fn.Fn)
				SourceType:            string | fn.Fn
			}) | fn.If
			SyncType?: string | fn.Fn
		})
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
