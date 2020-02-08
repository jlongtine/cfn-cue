package eucentral1

import "github.com/TangoGroup/aws/fn"

ApiGateway :: {
	Account :: {
		Type: "AWS::ApiGateway::Account"
		Properties: CloudWatchRoleArn?: string | fn.Fn
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	ApiKey :: {
		Type: "AWS::ApiGateway::ApiKey"
		Properties: {
			CustomerId?:         string | fn.Fn
			Description?:        string | fn.Fn
			Enabled?:            bool | fn.Fn
			GenerateDistinctId?: bool | fn.Fn
			Name?:               string | fn.Fn
			StageKeys?: [...{
				RestApiId?: string | fn.Fn
				StageName?: string | fn.Fn
			}]
			Tags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
			Value?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Authorizer :: {
		Type: "AWS::ApiGateway::Authorizer"
		Properties: {
			AuthType?:                     string | fn.Fn
			AuthorizerCredentials?:        string | fn.Fn
			AuthorizerResultTtlInSeconds?: (>=0 & <=3600) | fn.Fn
			AuthorizerUri?:                string | fn.Fn
			IdentitySource?:               string | fn.Fn
			IdentityValidationExpression?: string | fn.Fn
			Name?:                         string | fn.Fn
			ProviderARNs?:                 [...(string | fn.Fn)] | (string | fn.Fn)
			RestApiId:                     string | fn.Fn
			Type:                          ("COGNITO_USER_POOLS" | "REQUEST" | "TOKEN") | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	BasePathMapping :: {
		Type: "AWS::ApiGateway::BasePathMapping"
		Properties: {
			BasePath?:  string | fn.Fn
			DomainName: string | fn.Fn
			RestApiId?: string | fn.Fn
			Stage?:     string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	ClientCertificate :: {
		Type: "AWS::ApiGateway::ClientCertificate"
		Properties: {
			Description?: string | fn.Fn
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
	Deployment :: {
		Type: "AWS::ApiGateway::Deployment"
		Properties: {
			DeploymentCanarySettings?: {
				PercentTraffic?: number | fn.Fn
				StageVariableOverrides?: [string]: string | fn.Fn
				UseStageCache?: bool | fn.Fn
			}
			Description?: string | fn.Fn
			RestApiId:    string | fn.Fn
			StageDescription?: {
				AccessLogSetting?: {
					DestinationArn?: string | fn.Fn
					Format?:         string | fn.Fn
				}
				CacheClusterEnabled?: bool | fn.Fn
				CacheClusterSize?:    string | fn.Fn
				CacheDataEncrypted?:  bool | fn.Fn
				CacheTtlInSeconds?:   int | fn.Fn
				CachingEnabled?:      bool | fn.Fn
				CanarySetting?: {
					PercentTraffic?: number | fn.Fn
					StageVariableOverrides?: [string]: string | fn.Fn
					UseStageCache?: bool | fn.Fn
				}
				ClientCertificateId?:  string | fn.Fn
				DataTraceEnabled?:     bool | fn.Fn
				Description?:          string | fn.Fn
				DocumentationVersion?: string | fn.Fn
				LoggingLevel?:         string | fn.Fn
				MethodSettings?: [...{
					CacheDataEncrypted?:   bool | fn.Fn
					CacheTtlInSeconds?:    int | fn.Fn
					CachingEnabled?:       bool | fn.Fn
					DataTraceEnabled?:     bool | fn.Fn
					HttpMethod?:           string | fn.Fn
					LoggingLevel?:         string | fn.Fn
					MetricsEnabled?:       bool | fn.Fn
					ResourcePath?:         string | fn.Fn
					ThrottlingBurstLimit?: int | fn.Fn
					ThrottlingRateLimit?:  number | fn.Fn
				}]
				MetricsEnabled?: bool | fn.Fn
				Tags?: [...{
					Key:   string | fn.Fn
					Value: string | fn.Fn
				}]
				ThrottlingBurstLimit?: int | fn.Fn
				ThrottlingRateLimit?:  number | fn.Fn
				TracingEnabled?:       bool | fn.Fn
				Variables?: [string]: string | fn.Fn
			}
			StageName?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DocumentationPart :: {
		Type: "AWS::ApiGateway::DocumentationPart"
		Properties: {
			Location: {
				Method?:     string | fn.Fn
				Name?:       string | fn.Fn
				Path?:       string | fn.Fn
				StatusCode?: string | fn.Fn
				Type?:       string | fn.Fn
			}
			Properties: string | fn.Fn
			RestApiId:  string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DocumentationVersion :: {
		Type: "AWS::ApiGateway::DocumentationVersion"
		Properties: {
			Description?:         string | fn.Fn
			DocumentationVersion: string | fn.Fn
			RestApiId:            string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	DomainName :: {
		Type: "AWS::ApiGateway::DomainName"
		Properties: {
			CertificateArn?: string | fn.Fn
			DomainName:      string | fn.Fn
			EndpointConfiguration?: Types?: [...(string | fn.Fn)] | (string | fn.Fn)
			RegionalCertificateArn?: string | fn.Fn
			SecurityPolicy?:         string | fn.Fn
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
	GatewayResponse :: {
		Type: "AWS::ApiGateway::GatewayResponse"
		Properties: {
			ResponseParameters?: [string]: string | fn.Fn
			ResponseTemplates?: [string]:  string | fn.Fn
			ResponseType: ("ACCESS_DENIED" | "API_CONFIGURATION_ERROR" | "AUTHORIZER_FAILURE" | "AUTHORIZER_CONFIGURATION_ERROR" | "BAD_REQUEST_PARAMETERS" | "BAD_REQUEST_BODY" | "DEFAULT_4XX" | "DEFAULT_5XX" | "EXPIRED_TOKEN" | "INVALID_SIGNATURE" | "INTEGRATION_FAILURE" | "INTEGRATION_TIMEOUT" | "INVALID_API_KEY" | "MISSING_AUTHENTICATION_TOKEN" | "QUOTA_EXCEEDED" | "REQUEST_TOO_LARGE" | "RESOURCE_NOT_FOUND" | "THROTTLED" | "UNAUTHORIZED" | "UNSUPPORTED_MEDIA_TYPE") | fn.Fn
			RestApiId:    string | fn.Fn
			StatusCode?:  string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Method :: {
		Type: "AWS::ApiGateway::Method"
		Properties: {
			ApiKeyRequired?:      bool | fn.Fn
			AuthorizationScopes?: [...(string | fn.Fn)] | (string | fn.Fn)
			AuthorizationType?:   string | fn.Fn
			AuthorizerId?:        string | fn.Fn
			HttpMethod:           string | fn.Fn
			Integration?: {
				CacheKeyParameters?:    [...(string | fn.Fn)] | (string | fn.Fn)
				CacheNamespace?:        string | fn.Fn
				ConnectionId?:          string | fn.Fn
				ConnectionType?:        string | fn.Fn
				ContentHandling?:       string | fn.Fn
				Credentials?:           string | fn.Fn
				IntegrationHttpMethod?: string | fn.Fn
				IntegrationResponses?: [...{
					ContentHandling?: string | fn.Fn
					ResponseParameters?: [string]: string | fn.Fn
					ResponseTemplates?: [string]:  string | fn.Fn
					SelectionPattern?: string | fn.Fn
					StatusCode:        string | fn.Fn
				}]
				PassthroughBehavior?: string | fn.Fn
				RequestParameters?: [string]: string | fn.Fn
				RequestTemplates?: [string]:  string | fn.Fn
				TimeoutInMillis?: int | fn.Fn
				Type?:            string | fn.Fn
				Uri?:             string | fn.Fn
			}
			MethodResponses?: [...{
				ResponseModels?: [string]:     string | fn.Fn
				ResponseParameters?: [string]: bool | fn.Fn
				StatusCode: string | fn.Fn
			}]
			OperationName?: string | fn.Fn
			RequestModels?: [string]:     string | fn.Fn
			RequestParameters?: [string]: bool | fn.Fn
			RequestValidatorId?: string | fn.Fn
			ResourceId:          string | fn.Fn
			RestApiId:           string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Model :: {
		Type: "AWS::ApiGateway::Model"
		Properties: {
			ContentType?: string | fn.Fn
			Description?: string | fn.Fn
			Name?:        string | fn.Fn
			RestApiId:    string | fn.Fn
			Schema?:      {
				[string]: _
			} | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	RequestValidator :: {
		Type: "AWS::ApiGateway::RequestValidator"
		Properties: {
			Name?:                      string | fn.Fn
			RestApiId:                  string | fn.Fn
			ValidateRequestBody?:       bool | fn.Fn
			ValidateRequestParameters?: bool | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	Resource :: {
		Type: "AWS::ApiGateway::Resource"
		Properties: {
			ParentId:  string | fn.Fn
			PathPart:  string | fn.Fn
			RestApiId: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	RestApi :: {
		Type: "AWS::ApiGateway::RestApi"
		Properties: {
			ApiKeySourceType?: ("AUTHORIZER" | "HEADER") | fn.Fn
			BinaryMediaTypes?: [...(string | fn.Fn)] | (string | fn.Fn)
			Body?:             {
				[string]: _
			} | fn.Fn
			BodyS3Location?: {
				Bucket?:  string | fn.Fn
				ETag?:    string | fn.Fn
				Key?:     string | fn.Fn
				Version?: string | fn.Fn
			}
			CloneFrom?:   string | fn.Fn
			Description?: string | fn.Fn
			EndpointConfiguration?: {
				Types?:          [...(string | fn.Fn)] | (string | fn.Fn)
				VpcEndpointIds?: [...(string | fn.Fn)] | (string | fn.Fn)
			}
			FailOnWarnings?:         bool | fn.Fn
			MinimumCompressionSize?: int | fn.Fn
			Name?:                   string | fn.Fn
			Parameters?: [string]: string | fn.Fn
			Policy?: {
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
		Condition?: string
	}
	Stage :: {
		Type: "AWS::ApiGateway::Stage"
		Properties: {
			AccessLogSetting?: {
				DestinationArn?: string | fn.Fn
				Format?:         string | fn.Fn
			}
			CacheClusterEnabled?: bool | fn.Fn
			CacheClusterSize?:    string | fn.Fn
			CanarySetting?: {
				DeploymentId?:   string | fn.Fn
				PercentTraffic?: number | fn.Fn
				StageVariableOverrides?: [string]: string | fn.Fn
				UseStageCache?: bool | fn.Fn
			}
			ClientCertificateId?:  string | fn.Fn
			DeploymentId?:         string | fn.Fn
			Description?:          string | fn.Fn
			DocumentationVersion?: string | fn.Fn
			MethodSettings?: [...{
				CacheDataEncrypted?:   bool | fn.Fn
				CacheTtlInSeconds?:    int | fn.Fn
				CachingEnabled?:       bool | fn.Fn
				DataTraceEnabled?:     bool | fn.Fn
				HttpMethod?:           string | fn.Fn
				LoggingLevel?:         string | fn.Fn
				MetricsEnabled?:       bool | fn.Fn
				ResourcePath?:         string | fn.Fn
				ThrottlingBurstLimit?: int | fn.Fn
				ThrottlingRateLimit?:  number | fn.Fn
			}]
			RestApiId:  string | fn.Fn
			StageName?: string | fn.Fn
			Tags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
			TracingEnabled?: bool | fn.Fn
			Variables?: [string]: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	UsagePlan :: {
		Type: "AWS::ApiGateway::UsagePlan"
		Properties: {
			ApiStages?: [...{
				ApiId?: string | fn.Fn
				Stage?: string | fn.Fn
				Throttle?: [string]: {
					BurstLimit?: int | fn.Fn
					RateLimit?:  number | fn.Fn
				}
			}]
			Description?: string | fn.Fn
			Quota?: {
				Limit?:  int | fn.Fn
				Offset?: int | fn.Fn
				Period?: string | fn.Fn
			}
			Tags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
			Throttle?: {
				BurstLimit?: int | fn.Fn
				RateLimit?:  number | fn.Fn
			}
			UsagePlanName?: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	UsagePlanKey :: {
		Type: "AWS::ApiGateway::UsagePlanKey"
		Properties: {
			KeyId:       string | fn.Fn
			KeyType:     ("API_KEY") | fn.Fn
			UsagePlanId: string | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	VpcLink :: {
		Type: "AWS::ApiGateway::VpcLink"
		Properties: {
			Description?: string | fn.Fn
			Name:         string | fn.Fn
			TargetArns:   [...(string | fn.Fn)] | (string | fn.Fn)
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
