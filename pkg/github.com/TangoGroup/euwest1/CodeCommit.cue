package euwest1

import (
	"github.com/TangoGroup/fn"
	"strings"
)

CodeCommit :: {
	Repository :: {
		Type: "AWS::CodeCommit::Repository"
		Properties: {
			Code?: S3: {
				Bucket:         string | fn.Fn
				Key:            string | fn.Fn
				ObjectVersion?: string | fn.Fn
			}
			RepositoryDescription?: string | fn.Fn
			RepositoryName:         (string & (strings.MinRunes(1) & strings.MaxRunes(100)) & (=~#"^[a-zA-Z0-9._\-]+(?<!\.git)$"#)) | fn.Fn
			Tags?: [...{
				Key:   string | fn.Fn
				Value: string | fn.Fn
			}]
			Triggers?: [...{
				Branches?: [...(string | fn.Fn)]
				CustomData?:    string | fn.Fn
				DestinationArn: string | fn.Fn
				Events: [...((string & ("all" | "createReference" | "deleteReference" | "updateReference")) | fn.Fn)]
				Name: string | fn.Fn
			}]
		}
	}
}