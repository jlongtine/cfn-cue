package euwest2

import "github.com/TangoGroup/fn"

WAF :: {
	ByteMatchSet :: {
		Type: "AWS::WAF::ByteMatchSet"
		Properties: {
			ByteMatchTuples?: [...{
				FieldToMatch: {
					Data?: string | fn.Fn
					Type:  string | fn.Fn
				}
				PositionalConstraint: string | fn.Fn
				TargetString?:        string | fn.Fn
				TargetStringBase64?:  string | fn.Fn
				TextTransformation:   string | fn.Fn
			}]
			Name: string | fn.Fn
		}
	}
	IPSet :: {
		Type: "AWS::WAF::IPSet"
		Properties: {
			IPSetDescriptors?: [...{
				Type:  string | fn.Fn
				Value: string | fn.Fn
			}]
			Name: string | fn.Fn
		}
	}
	Rule :: {
		Type: "AWS::WAF::Rule"
		Properties: {
			MetricName: string | fn.Fn
			Name:       string | fn.Fn
			Predicates?: [...{
				DataId:  string | fn.Fn
				Negated: bool | fn.Fn
				Type:    (string & ("ByteMatch" | "GeoMatch" | "IPMatch" | "RegexMatch" | "SizeConstraint" | "SqlInjectionMatch" | "XssMatch")) | fn.Fn
			}]
		}
	}
	SizeConstraintSet :: {
		Type: "AWS::WAF::SizeConstraintSet"
		Properties: {
			Name: string | fn.Fn
			SizeConstraints: [...{
				ComparisonOperator: string | fn.Fn
				FieldToMatch: {
					Data?: string | fn.Fn
					Type:  string | fn.Fn
				}
				Size:               int | fn.Fn
				TextTransformation: string | fn.Fn
			}]
		}
	}
	SqlInjectionMatchSet :: {
		Type: "AWS::WAF::SqlInjectionMatchSet"
		Properties: {
			Name: string | fn.Fn
			SqlInjectionMatchTuples?: [...{
				FieldToMatch: {
					Data?: string | fn.Fn
					Type:  string | fn.Fn
				}
				TextTransformation: string | fn.Fn
			}]
		}
	}
	WebACL :: {
		Type: "AWS::WAF::WebACL"
		Properties: {
			DefaultAction: Type: string | fn.Fn
			MetricName: string | fn.Fn
			Name:       string | fn.Fn
			Rules?: [...{
				Action?: Type: string | fn.Fn
				Priority: int | fn.Fn
				RuleId:   string | fn.Fn
			}]
		}
	}
	XssMatchSet :: {
		Type: "AWS::WAF::XssMatchSet"
		Properties: {
			Name: string | fn.Fn
			XssMatchTuples: [...{
				FieldToMatch: {
					Data?: string | fn.Fn
					Type:  string | fn.Fn
				}
				TextTransformation: string | fn.Fn
			}]
		}
	}
}