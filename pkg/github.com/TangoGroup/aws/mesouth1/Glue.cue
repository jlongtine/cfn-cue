package mesouth1

import "github.com/TangoGroup/aws/fn"

Glue :: {
	Classifier :: {
		Type: "AWS::Glue::Classifier"
		Properties: {
			CsvClassifier?: {
			}
			GrokClassifier?: {
			}
			JsonClassifier?: {
			}
			XMLClassifier?: {
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Connection :: {
		Type: "AWS::Glue::Connection"
		Properties: {
			CatalogId: string | fn.Fn
			ConnectionInput: {
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Crawler :: {
		Type: "AWS::Glue::Crawler"
		Properties: {
			Classifiers?:                  [...(string | fn.Fn)] | (string | fn.Fn)
			Configuration?:                string | fn.Fn
			CrawlerSecurityConfiguration?: string | fn.Fn
			DatabaseName?:                 string | fn.Fn
			Description?:                  string | fn.Fn
			Name?:                         string | fn.Fn
			Role:                          string | fn.Fn
			Schedule?: {
			}
			SchemaChangePolicy?: {
			}
			TablePrefix?: string | fn.Fn
			Tags?:        {
				[string]: _
			} | fn.Fn
			Targets: {
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DataCatalogEncryptionSettings :: {
		Type: "AWS::Glue::DataCatalogEncryptionSettings"
		Properties: {
			CatalogId: string | fn.Fn
			DataCatalogEncryptionSettings: {
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Database :: {
		Type: "AWS::Glue::Database"
		Properties: {
			CatalogId: string | fn.Fn
			DatabaseInput: {
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DevEndpoint :: {
		Type: "AWS::Glue::DevEndpoint"
		Properties: {
			Arguments?: {
				[string]: _
			} | fn.Fn
			EndpointName?:          string | fn.Fn
			ExtraJarsS3Path?:       string | fn.Fn
			ExtraPythonLibsS3Path?: string | fn.Fn
			GlueVersion?:           string | fn.Fn
			NumberOfNodes?:         int | fn.Fn
			NumberOfWorkers?:       int | fn.Fn
			PublicKey?:             string | fn.Fn
			RoleArn:                string | fn.Fn
			SecurityConfiguration?: string | fn.Fn
			SecurityGroupIds?:      [...(string | fn.Fn)] | (string | fn.Fn)
			SubnetId?:              string | fn.Fn
			Tags?:                  {
				[string]: _
			} | fn.Fn
			WorkerType?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Job :: {
		Type: "AWS::Glue::Job"
		Properties: {
			AllocatedCapacity?: number | fn.Fn
			Command: {
			}
			Connections?: {
			}
			DefaultArguments?: {
				[string]: _
			} | fn.Fn
			Description?: string | fn.Fn
			ExecutionProperty?: {
			}
			GlueVersion?: string | fn.Fn
			LogUri?:      string | fn.Fn
			MaxCapacity?: number | fn.Fn
			MaxRetries?:  number | fn.Fn
			Name?:        string | fn.Fn
			NotificationProperty?: {
			}
			NumberOfWorkers?:       int | fn.Fn
			Role:                   string | fn.Fn
			SecurityConfiguration?: string | fn.Fn
			Tags?:                  {
				[string]: _
			} | fn.Fn
			Timeout?:    int | fn.Fn
			WorkerType?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	MLTransform :: {
		Type: "AWS::Glue::MLTransform"
		Properties: {
			Description?: string | fn.Fn
			GlueVersion?: string | fn.Fn
			InputRecordTables: {
			}
			MaxCapacity?:     number | fn.Fn
			MaxRetries?:      int | fn.Fn
			Name?:            string | fn.Fn
			NumberOfWorkers?: int | fn.Fn
			Role:             string | fn.Fn
			Timeout?:         int | fn.Fn
			TransformParameters: {
			}
			WorkerType?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Partition :: {
		Type: "AWS::Glue::Partition"
		Properties: {
			CatalogId:    string | fn.Fn
			DatabaseName: string | fn.Fn
			PartitionInput: {
			}
			TableName: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	SecurityConfiguration :: {
		Type: "AWS::Glue::SecurityConfiguration"
		Properties: {
			EncryptionConfiguration: {
			}
			Name: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Table :: {
		Type: "AWS::Glue::Table"
		Properties: {
			CatalogId:    string | fn.Fn
			DatabaseName: string | fn.Fn
			TableInput: {
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Trigger :: {
		Type: "AWS::Glue::Trigger"
		Properties: {
			Actions: [...{
			}]
			Description?: string | fn.Fn
			Name?:        string | fn.Fn
			Predicate?: {
			}
			Schedule?:        string | fn.Fn
			StartOnCreation?: bool | fn.Fn
			Tags?:            {
				[string]: _
			} | fn.Fn
			Type:          string | fn.Fn
			WorkflowName?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Workflow :: {
		Type: "AWS::Glue::Workflow"
		Properties: {
			DefaultRunProperties?: {
				[string]: _
			} | fn.Fn
			Description?: string | fn.Fn
			Name?:        string | fn.Fn
			Tags?:        {
				[string]: _
			} | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
