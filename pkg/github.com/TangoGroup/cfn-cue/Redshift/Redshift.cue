package Redshift

import "github.com/TangoGroup/fn"

Cluster :: {
	Type: "AWS::Redshift::Cluster"
	Properties: {
		AllowVersionUpgrade?:              bool | fn.Fn
		AutomatedSnapshotRetentionPeriod?: int | fn.Fn
		AvailabilityZone?:                 string | fn.Fn
		ClusterIdentifier?:                string | fn.Fn
		ClusterParameterGroupName?:        string | fn.Fn
		ClusterSecurityGroups?:            [...string] | fn.Fn
		ClusterSubnetGroupName?:           string | fn.Fn
		ClusterType:                       (string & ("multi-node" | "single-node")) | fn.Fn
		ClusterVersion?:                   (string & ("1.0")) | fn.Fn
		DBName:                            string | fn.Fn
		ElasticIp?:                        string | fn.Fn
		Encrypted?:                        bool | fn.Fn
		HsmClientCertificateIdentifier?:   string | fn.Fn
		HsmConfigurationIdentifier?:       string | fn.Fn
		IamRoles?:                         [...string] | fn.Fn
		KmsKeyId?:                         string | fn.Fn
		LoggingProperties?:                __LoggingProperties
		MasterUserPassword:                string | fn.Fn
		MasterUsername:                    string | fn.Fn
		NodeType:                          (string & ("dc1.8xlarge" | "dc1.large" | "dc2.8xlarge" | "dc2.large" | "ds1.8xlarge" | "ds1.xlarge" | "ds2.8xlarge" | "ds2.xlarge")) | fn.Fn
		NumberOfNodes?:                    (int & (>=1 & <=100)) | fn.Fn
		OwnerAccount?:                     string | fn.Fn
		Port?:                             int | fn.Fn
		PreferredMaintenanceWindow?:       string | fn.Fn
		PubliclyAccessible?:               bool | fn.Fn
		SnapshotClusterIdentifier?:        string | fn.Fn
		SnapshotIdentifier?:               string | fn.Fn
		Tags?: [...__Tag]
		VpcSecurityGroupIds?: [...string] | fn.Fn
	}
	__LoggingProperties :: {
		BucketName:   string | fn.Fn
		S3KeyPrefix?: string | fn.Fn
	}
}
ClusterParameterGroup :: {
	Type: "AWS::Redshift::ClusterParameterGroup"
	Properties: {
		Description:          string | fn.Fn
		ParameterGroupFamily: string | fn.Fn
		Parameters?: [...__Parameter]
		Tags?: [...__Tag]
	}
	__Parameter :: {
		ParameterName:  string | fn.Fn
		ParameterValue: string | fn.Fn
	}
}
ClusterSecurityGroup :: {
	Type: "AWS::Redshift::ClusterSecurityGroup"
	Properties: {
		Description: string | fn.Fn
		Tags?: [...__Tag]
	}
}
ClusterSecurityGroupIngress :: {
	Type: "AWS::Redshift::ClusterSecurityGroupIngress"
	Properties: {
		CIDRIP?:                  string | fn.Fn
		ClusterSecurityGroupName: string | fn.Fn
		EC2SecurityGroupName?:    string | fn.Fn
		EC2SecurityGroupOwnerId?: string | fn.Fn
	}
}
ClusterSubnetGroup :: {
	Type: "AWS::Redshift::ClusterSubnetGroup"
	Properties: {
		Description: string | fn.Fn
		SubnetIds:   [...string] | fn.Fn
		Tags?: [...__Tag]
	}
}