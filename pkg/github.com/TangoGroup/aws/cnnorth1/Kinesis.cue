package cnnorth1

import "github.com/TangoGroup/aws/fn"

Kinesis :: {
	Stream :: {
		Type: "AWS::Kinesis::Stream"
		Properties: {
			Name?:                 string | fn.Fn
			RetentionPeriodHours?: (>=1 & <=168) | fn.Fn
			ShardCount:            (>=1 & <=100000) | fn.Fn
			StreamEncryption?: {
				EncryptionType: string | fn.Fn
				KeyId:          string | fn.Fn
			}
			Tags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	StreamConsumer :: {
		Type: "AWS::Kinesis::StreamConsumer"
		Properties: {
			ConsumerName: string | fn.Fn
			StreamARN:    string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
