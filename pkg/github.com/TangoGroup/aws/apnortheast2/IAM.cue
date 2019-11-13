package apnortheast2

import (
	"github.com/TangoGroup/aws/fn"
	"strings"
)

IAM :: {
	AccessKey :: {
		Type: "AWS::IAM::AccessKey"
		Properties: {
			Serial?:  int | fn.Fn
			Status?:  (string & ("Active" | "Inactive")) | fn.Fn
			UserName: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	Group :: {
		Type: "AWS::IAM::Group"
		Properties: {
			GroupName?: string | fn.Fn
			ManagedPolicyArns?: [...((string & (=~#"arn:(aws[a-zA-Z-]*)?:iam::(\d{12}|aws):policy/[a-zA-Z_0-9+=,.@\-_/]+"#)) | fn.Fn)]
			Path?: (string & (=~#"^/(.+/)*$"#)) | fn.Fn
			Policies?: [...{
				PolicyDocument: {
					[string]: _
				} | fn.Fn
				PolicyName: (string & (strings.MinRunes(1) & strings.MaxRunes(128)) & (=~#"^[a-zA-Z0-9+=,.@\-_]+$"#)) | fn.Fn
			}]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	InstanceProfile :: {
		Type: "AWS::IAM::InstanceProfile"
		Properties: {
			InstanceProfileName?: string | fn.Fn
			Path?:                (string & (=~#"^/(.+/)*$"#)) | fn.Fn
			Roles: [...(string | fn.Fn)]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	ManagedPolicy :: {
		Type: "AWS::IAM::ManagedPolicy"
		Properties: {
			Description?: string | fn.Fn
			Groups?: [...(string | fn.Fn)]
			ManagedPolicyName?: string | fn.Fn
			Path?:              (string & (=~#"^/(.+/)*$"#)) | fn.Fn
			PolicyDocument:     {
				[string]: _
			} | fn.Fn
			Roles?: [...(string | fn.Fn)]
			Users?: [...(string | fn.Fn)]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	Policy :: {
		Type: "AWS::IAM::Policy"
		Properties: {
			Groups?: [...(string | fn.Fn)]
			PolicyDocument: {
				[string]: _
			} | fn.Fn
			PolicyName: (string & (strings.MinRunes(1) & strings.MaxRunes(128)) & (=~#"^[a-zA-Z0-9+=,.@\-_]+$"#)) | fn.Fn
			Roles?: [...(string | fn.Fn)]
			Users?: [...(string | fn.Fn)]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	Role :: {
		Type: "AWS::IAM::Role"
		Properties: {
			AssumeRolePolicyDocument: {
				[string]: _
			} | fn.Fn
			Description?: string | fn.Fn
			ManagedPolicyArns?: [...((string & (=~#"arn:(aws[a-zA-Z-]*)?:iam::(\d{12}|aws):policy/[a-zA-Z_0-9+=,.@\-_/]+"#)) | fn.Fn)]
			MaxSessionDuration?:  (int & (>=3600 & <=43200)) | fn.Fn
			Path?:                (string & (=~#"^/(.+/)*$"#)) | fn.Fn
			PermissionsBoundary?: string | fn.Fn
			Policies?: [...{
				PolicyDocument: {
					[string]: _
				} | fn.Fn
				PolicyName: (string & (strings.MinRunes(1) & strings.MaxRunes(128)) & (=~#"^[a-zA-Z0-9+=,.@\-_]+$"#)) | fn.Fn
			}]
			RoleName?: string | fn.Fn
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
	ServiceLinkedRole :: {
		Type: "AWS::IAM::ServiceLinkedRole"
		Properties: {
			AWSServiceName: string | fn.Fn
			CustomSuffix?:  string | fn.Fn
			Description?:   string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	User :: {
		Type: "AWS::IAM::User"
		Properties: {
			Groups?: [...(string | fn.Fn)]
			LoginProfile?: {
				Password:               string | fn.Fn
				PasswordResetRequired?: bool | fn.Fn
			}
			ManagedPolicyArns?: [...((string & (=~#"arn:(aws[a-zA-Z-]*)?:iam::(\d{12}|aws):policy/[a-zA-Z_0-9+=,.@\-_/]+"#)) | fn.Fn)]
			Path?:                (string & (=~#"^/(.+/)*$"#)) | fn.Fn
			PermissionsBoundary?: string | fn.Fn
			Policies?: [...{
				PolicyDocument: {
					[string]: _
				} | fn.Fn
				PolicyName: (string & (strings.MinRunes(1) & strings.MaxRunes(128)) & (=~#"^[a-zA-Z0-9+=,.@\-_]+$"#)) | fn.Fn
			}]
			UserName?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	UserToGroupAddition :: {
		Type: "AWS::IAM::UserToGroupAddition"
		Properties: {
			GroupName: string | fn.Fn
			Users: [...(string | fn.Fn)]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
}