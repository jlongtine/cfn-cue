package euwest3

import (
	"github.com/TangoGroup/aws/fn"
	"strings"
)

#DataBrew: {
	#Dataset: {
		Type: "AWS::DataBrew::Dataset"
		Properties: {
			Format?:        ("CSV" | "JSON" | "PARQUET" | "EXCEL") | fn.#Fn
			FormatOptions?: {
				Csv?: {
					Delimiter?: (strings.MinRunes(1) & strings.MaxRunes(1)) | fn.#Fn
					HeaderRow?: bool | fn.#Fn
				} | fn.#If
				Excel?: {
					HeaderRow?:    bool | fn.#Fn
					SheetIndexes?: [...(int | fn.#Fn)] | (int | fn.#Fn)
					SheetNames?:   [...(string | fn.#Fn)] | (string | fn.#Fn)
				} | fn.#If
				Json?: {
					MultiLine?: bool | fn.#Fn
				} | fn.#If
			} | fn.#If
			Input: {
				DataCatalogInputDefinition?: {
					CatalogId?:     string | fn.#Fn
					DatabaseName?:  string | fn.#Fn
					TableName?:     string | fn.#Fn
					TempDirectory?: {
						Bucket: string | fn.#Fn
						Key?:   string | fn.#Fn
					} | fn.#If
				} | fn.#If
				DatabaseInputDefinition?: {
					DatabaseTableName?:  string | fn.#Fn
					GlueConnectionName?: string | fn.#Fn
					TempDirectory?:      {
						Bucket: string | fn.#Fn
						Key?:   string | fn.#Fn
					} | fn.#If
				} | fn.#If
				S3InputDefinition?: {
					Bucket: string | fn.#Fn
					Key?:   string | fn.#Fn
				} | fn.#If
			} | fn.#If
			Name:         (strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn
			PathOptions?: {
				FilesLimit?: {
					MaxFiles:   int | fn.#Fn
					Order?:     ("ASCENDING" | "DESCENDING") | fn.#Fn
					OrderedBy?: ("LAST_MODIFIED_DATE") | fn.#Fn
				} | fn.#If
				LastModifiedDateCondition?: {
					Expression: (strings.MinRunes(4) & strings.MaxRunes(1024) & (=~#"^[&lt;&gt;0-9A-Za-z_:)(!= ]+$"#)) | fn.#Fn
					ValuesMap:  [...{
						Value:          string | fn.#Fn
						ValueReference: (strings.MinRunes(2) & strings.MaxRunes(128) & (=~#"^:[A-Za-z0-9_]+$"#)) | fn.#Fn
					}] | fn.#If
				} | fn.#If
				Parameters?: [...{
					DatasetParameter: {
						CreateColumn?:    bool | fn.#Fn
						DatetimeOptions?: {
							Format:          (strings.MinRunes(2) & strings.MaxRunes(100)) | fn.#Fn
							LocaleCode?:     (strings.MinRunes(2) & strings.MaxRunes(100) & (=~#"^[A-Za-z0-9_\.#@\-]+$"#)) | fn.#Fn
							TimezoneOffset?: (strings.MinRunes(1) & strings.MaxRunes(6) & (=~#"^(Z|[-+](\d|\d{2}|\d{2}:?\d{2}))$"#)) | fn.#Fn
						} | fn.#If
						Filter?: {
							Expression: (strings.MinRunes(4) & strings.MaxRunes(1024) & (=~#"^[&lt;&gt;0-9A-Za-z_:)(!= ]+$"#)) | fn.#Fn
							ValuesMap:  [...{
								Value:          string | fn.#Fn
								ValueReference: (strings.MinRunes(2) & strings.MaxRunes(128) & (=~#"^:[A-Za-z0-9_]+$"#)) | fn.#Fn
							}] | fn.#If
						} | fn.#If
						Name: (strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn
						Type: ("String" | "Number" | "Datetime") | fn.#Fn
					} | fn.#If
					PathParameterName: (strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn
				}] | fn.#If
			} | fn.#If
			Tags?: [...{
				Key:   string | fn.#Fn
				Value: string | fn.#Fn
			}] | fn.#If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Job: {
		Type: "AWS::DataBrew::Job"
		Properties: {
			DatasetName?:      (strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn
			EncryptionKeyArn?: (strings.MinRunes(20) & strings.MaxRunes(2048)) | fn.#Fn
			EncryptionMode?:   ("SSE-KMS" | "SSE-S3") | fn.#Fn
			JobSample?:        {
				[string]: _
			} | fn.#Fn
			LogSubscription?: ("ENABLE" | "DISABLE") | fn.#Fn
			MaxCapacity?:     int | fn.#Fn
			MaxRetries?:      int | fn.#Fn
			Name:             (strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn
			OutputLocation?:  {
				[string]: _
			} | fn.#Fn
			Outputs?: [...{
				CompressionFormat?: ("GZIP" | "LZ4" | "SNAPPY" | "BZIP2" | "DEFLATE" | "LZO" | "BROTLI" | "ZSTD" | "ZLIB") | fn.#Fn
				Format?:            ("CSV" | "JSON" | "PARQUET" | "GLUEPARQUET" | "AVRO" | "ORC" | "XML") | fn.#Fn
				FormatOptions?:     {
					Csv?: {
						Delimiter?: (strings.MinRunes(1) & strings.MaxRunes(1)) | fn.#Fn
					} | fn.#If
				} | fn.#If
				Location: {
					Bucket: string | fn.#Fn
					Key?:   string | fn.#Fn
				} | fn.#If
				Overwrite?:        bool | fn.#Fn
				PartitionColumns?: [...(string | fn.#Fn)] | (string | fn.#Fn)
			}] | fn.#If
			ProjectName?: (strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn
			Recipe?:      {
				[string]: _
			} | fn.#Fn
			RoleArn: string | fn.#Fn
			Tags?:   [...{
				Key:   string | fn.#Fn
				Value: string | fn.#Fn
			}] | fn.#If
			Timeout?: int | fn.#Fn
			Type:     ("PROFILE" | "RECIPE") | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Project: {
		Type: "AWS::DataBrew::Project"
		Properties: {
			DatasetName: (strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn
			Name:        (strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn
			RecipeName:  (strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn
			RoleArn:     string | fn.#Fn
			Sample?:     {
				[string]: _
			} | fn.#Fn
			Tags?: [...{
				Key:   string | fn.#Fn
				Value: string | fn.#Fn
			}] | fn.#If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Recipe: {
		Type: "AWS::DataBrew::Recipe"
		Properties: {
			Description?: string | fn.#Fn
			Name:         (strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn
			Steps:        [...{
				Action: {
					Operation:   string | fn.#Fn
					Parameters?: {
						[string]: string | fn.#Fn
					} | fn.#If
				} | fn.#If
				ConditionExpressions?: [...{
					Condition:    string | fn.#Fn
					TargetColumn: string | fn.#Fn
					Value?:       string | fn.#Fn
				}] | fn.#If
			}] | fn.#If
			Tags?: [...{
				Key:   string | fn.#Fn
				Value: string | fn.#Fn
			}] | fn.#If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Schedule: {
		Type: "AWS::DataBrew::Schedule"
		Properties: {
			CronExpression: (strings.MinRunes(1) & strings.MaxRunes(512)) | fn.#Fn
			JobNames?:      [...((strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn)] | ((strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn)
			Name:           (strings.MinRunes(1) & strings.MaxRunes(255)) | fn.#Fn
			Tags?:          [...{
				Key:   string | fn.#Fn
				Value: string | fn.#Fn
			}] | fn.#If
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
