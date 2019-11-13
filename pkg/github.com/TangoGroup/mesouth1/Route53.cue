package mesouth1

import "github.com/TangoGroup/fn"

Route53 :: {
	HealthCheck :: {
		Type: "AWS::Route53::HealthCheck"
		Properties: {
			HealthCheckConfig: {
				AlarmIdentifier?: {
					Name:   string | fn.Fn
					Region: string | fn.Fn
				}
				ChildHealthChecks?: [...(string | fn.Fn)]
				EnableSNI?:                    bool | fn.Fn
				FailureThreshold?:             int | fn.Fn
				FullyQualifiedDomainName?:     string | fn.Fn
				HealthThreshold?:              int | fn.Fn
				IPAddress?:                    string | fn.Fn
				InsufficientDataHealthStatus?: (string & ("Healthy" | "LastKnownStatus" | "Unhealthy")) | fn.Fn
				Inverted?:                     bool | fn.Fn
				MeasureLatency?:               bool | fn.Fn
				Port?:                         int | fn.Fn
				Regions?: [...(string | fn.Fn)]
				RequestInterval?: int | fn.Fn
				ResourcePath?:    string | fn.Fn
				SearchString?:    string | fn.Fn
				Type:             (string & ("CALCULATED" | "CLOUDWATCH_METRIC" | "HTTP_STR_MATCH" | "HTTP" | "HTTPS_STR_MATCH" | "HTTPS" | "TCP")) | fn.Fn
			}
			HealthCheckTags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	HostedZone :: {
		Type: "AWS::Route53::HostedZone"
		Properties: {
			HostedZoneConfig?: Comment?: string | fn.Fn
			HostedZoneTags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
			Name: string | fn.Fn
			QueryLoggingConfig?: CloudWatchLogsLogGroupArn: string | fn.Fn
			VPCs?: [...{
				VPCId:     string | fn.Fn
				VPCRegion: string | fn.Fn
			}]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	RecordSet :: {
		Type: "AWS::Route53::RecordSet"
		Properties: {
			AliasTarget?: {
				DNSName:               string | fn.Fn
				EvaluateTargetHealth?: bool | fn.Fn
				HostedZoneId:          string | fn.Fn
			}
			Comment?:  string | fn.Fn
			Failover?: (string & ("PRIMARY" | "SECONDARY")) | fn.Fn
			GeoLocation?: {
				ContinentCode?:   (string & ("AF" | "AN" | "AS" | "EU" | "NA" | "OC" | "SA")) | fn.Fn
				CountryCode?:     string | fn.Fn
				SubdivisionCode?: string | fn.Fn
			}
			HealthCheckId?:    string | fn.Fn
			HostedZoneId?:     string | fn.Fn
			HostedZoneName?:   string | fn.Fn
			MultiValueAnswer?: bool | fn.Fn
			Name:              string | fn.Fn
			Region?:           string | fn.Fn
			ResourceRecords?: [...(string | fn.Fn)]
			SetIdentifier?: string | fn.Fn
			TTL?:           string | fn.Fn
			Type:           (string & ("A" | "AAAA" | "CAA" | "CNAME" | "MX" | "NAPTR" | "NS" | "PTR" | "SOA" | "SPF" | "SRV" | "TXT")) | fn.Fn
			Weight?:        int | fn.Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
	RecordSetGroup :: {
		Type: "AWS::Route53::RecordSetGroup"
		Properties: {
			Comment?:        string | fn.Fn
			HostedZoneId?:   string | fn.Fn
			HostedZoneName?: string | fn.Fn
			RecordSets?: [...{
				AliasTarget?: {
					DNSName:               string | fn.Fn
					EvaluateTargetHealth?: bool | fn.Fn
					HostedZoneId:          string | fn.Fn
				}
				Comment?:  string | fn.Fn
				Failover?: (string & ("PRIMARY" | "SECONDARY")) | fn.Fn
				GeoLocation?: {
					ContinentCode?:   (string & ("AF" | "AN" | "AS" | "EU" | "NA" | "OC" | "SA")) | fn.Fn
					CountryCode?:     string | fn.Fn
					SubdivisionCode?: string | fn.Fn
				}
				HealthCheckId?:    string | fn.Fn
				HostedZoneId?:     string | fn.Fn
				HostedZoneName?:   string | fn.Fn
				MultiValueAnswer?: bool | fn.Fn
				Name:              string | fn.Fn
				Region?:           string | fn.Fn
				ResourceRecords?: [...(string | fn.Fn)]
				SetIdentifier?: string | fn.Fn
				TTL?:           string | fn.Fn
				Type:           (string & ("A" | "AAAA" | "CAA" | "CNAME" | "MX" | "NAPTR" | "NS" | "PTR" | "SOA" | "SPF" | "SRV" | "TXT")) | fn.Fn
				Weight?:        int | fn.Fn
			}]
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
	}
}
