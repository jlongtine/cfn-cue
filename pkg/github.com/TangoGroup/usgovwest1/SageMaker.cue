package usgovwest1

import "github.com/TangoGroup/fn"

SageMaker :: {
	NotebookInstance :: {
		Type: "AWS::SageMaker::NotebookInstance"
		Properties: {
			AcceleratorTypes?: [...(string | fn.Fn)]
			AdditionalCodeRepositories?: [...(string | fn.Fn)]
			DefaultCodeRepository?: string | fn.Fn
			DirectInternetAccess?:  string | fn.Fn
			InstanceType:           string | fn.Fn
			KmsKeyId?:              string | fn.Fn
			LifecycleConfigName?:   string | fn.Fn
			NotebookInstanceName?:  string | fn.Fn
			RoleArn:                string | fn.Fn
			RootAccess?:            string | fn.Fn
			SecurityGroupIds?: [...(string | fn.Fn)]
			SubnetId?: string | fn.Fn
			Tags?: [...{
			}]
			VolumeSizeInGB?: (int & (>=5 & <=16384)) | fn.Fn
		}
	}
}