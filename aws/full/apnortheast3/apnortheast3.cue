package apnortheast3

import "github.com/cue-sh/cfn-cue/aws/fn"

#ResourceSpecificationVersion: "35.2.0"
#Template: {
	AWSTemplateFormatVersion?: "2010-09-09"
	Description?:              string
	Metadata?: [string]: _
	Mappings?: [string]: [string]: [=~"[a-zA-Z0-9]"]: string | int | bool | [...(string | int | bool)]
	Conditions?: [string]: fn.#And | fn.#Equals | fn.#If | fn.#Not | fn.#Or
	Parameters?: [=~"[a-zA-Z0-9]"]: {
		Type:                   "AWS::EC2::AvailabilityZone::Name" | "AWS::EC2::Image::Id" | "AWS::EC2::Instance::Id" | "AWS::EC2::KeyPair::KeyName" | "AWS::EC2::SecurityGroup::GroupName" | "AWS::EC2::SecurityGroup::Id" | "AWS::EC2::Subnet::Id" | "AWS::EC2::VPC::Id" | "AWS::EC2::Volume::Id" | "AWS::Route53::HostedZone::Id" | "AWS::SSM::Parameter::Name" | "AWS::SSM::Parameter::Value<AWS::EC2::AvailabilityZone::Name>" | "AWS::SSM::Parameter::Value<AWS::EC2::Image::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Instance::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::KeyPair::KeyName>" | "AWS::SSM::Parameter::Value<AWS::EC2::SecurityGroup::GroupName>" | "AWS::SSM::Parameter::Value<AWS::EC2::SecurityGroup::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Subnet::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::VPC::Id>" | "AWS::SSM::Parameter::Value<AWS::EC2::Volume::Id>" | "AWS::SSM::Parameter::Value<AWS::Route53::HostedZone::Id>" | "AWS::SSM::Parameter::Value<CommaDelimitedList>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::AvailabilityZone::Name>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Image::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Instance::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::KeyPair::KeyName>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::SecurityGroup::GroupName>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::SecurityGroup::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Subnet::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::VPC::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::EC2::Volume::Id>>" | "AWS::SSM::Parameter::Value<List<AWS::Route53::HostedZone::Id>>" | "AWS::SSM::Parameter::Value<List<String>>" | "AWS::SSM::Parameter::Value<String>" | "CommaDelimitedList" | "List<AWS::EC2::AvailabilityZone::Name>" | "List<AWS::EC2::Image::Id>" | "List<AWS::EC2::Instance::Id>" | "List<AWS::EC2::SecurityGroup::GroupName>" | "List<AWS::EC2::SecurityGroup::Id>" | "List<AWS::EC2::Subnet::Id>" | "List<AWS::EC2::VPC::Id>" | "List<AWS::EC2::Volume::Id>" | "List<AWS::Route53::HostedZone::Id>" | "List<Number>" | "Number" | "String"
		AllowedPattern?:        string
		AllowedValues?:         [...(string | number | bool)]
		ConstraintDescription?: string
		Default?:               string | number | bool
		Description?:           string
		MaxLength?:             int | =~"^[0-9]+$"
		MaxValue?:              int | =~"^[0-9]+$"
		MinLength?:             int | =~"^[0-9]+$"
		MinValue?:              int | =~"^[0-9]+$"
		NoEcho?:                bool | =~"^(true|false)$"
	}
	Resources: [=~"[a-zA-Z0-9]"]: #AccessAnalyzer.#Analyzer | #AmazonMQ.#Broker | #AmazonMQ.#Configuration | #AmazonMQ.#ConfigurationAssociation | #ApiGateway.#Account | #ApiGateway.#ApiKey | #ApiGateway.#Authorizer | #ApiGateway.#BasePathMapping | #ApiGateway.#ClientCertificate | #ApiGateway.#Deployment | #ApiGateway.#DocumentationPart | #ApiGateway.#DocumentationVersion | #ApiGateway.#DomainName | #ApiGateway.#GatewayResponse | #ApiGateway.#Method | #ApiGateway.#Model | #ApiGateway.#RequestValidator | #ApiGateway.#Resource | #ApiGateway.#RestApi | #ApiGateway.#Stage | #ApiGateway.#UsagePlan | #ApiGateway.#UsagePlanKey | #ApplicationAutoScaling.#ScalableTarget | #ApplicationAutoScaling.#ScalingPolicy | #AutoScaling.#AutoScalingGroup | #AutoScaling.#LaunchConfiguration | #AutoScaling.#LifecycleHook | #AutoScaling.#ScalingPolicy | #AutoScaling.#ScheduledAction | #AutoScaling.#WarmPool | #Backup.#BackupPlan | #Backup.#BackupSelection | #Backup.#BackupVault | #Batch.#ComputeEnvironment | #Batch.#JobDefinition | #Batch.#JobQueue | #CDK.#Metadata | #CE.#CostCategory | #CertificateManager.#Account | #CertificateManager.#Certificate | #Chatbot.#SlackChannelConfiguration | #CloudFormation.#CustomResource | #CloudFormation.#Macro | #CloudFormation.#ModuleDefaultVersion | #CloudFormation.#ModuleVersion | #CloudFormation.#ResourceDefaultVersion | #CloudFormation.#ResourceVersion | #CloudFormation.#Stack | #CloudFormation.#WaitCondition | #CloudFormation.#WaitConditionHandle | #CloudFront.#CachePolicy | #CloudFront.#KeyGroup | #CloudFront.#OriginRequestPolicy | #CloudFront.#PublicKey | #CloudFront.#RealtimeLogConfig | #CloudTrail.#Trail | #CloudWatch.#Alarm | #CloudWatch.#AnomalyDetector | #CloudWatch.#CompositeAlarm | #CloudWatch.#Dashboard | #CloudWatch.#InsightRule | #CloudWatch.#MetricStream | #CodeCommit.#Repository | #CodeDeploy.#Application | #CodeDeploy.#DeploymentConfig | #CodeDeploy.#DeploymentGroup | #Config.#ConfigRule | #Config.#ConfigurationRecorder | #Config.#DeliveryChannel | #DMS.#Certificate | #DMS.#Endpoint | #DMS.#EventSubscription | #DMS.#ReplicationInstance | #DMS.#ReplicationSubnetGroup | #DMS.#ReplicationTask | #DynamoDB.#Table | #EC2.#CustomerGateway | #EC2.#DHCPOptions | #EC2.#EC2Fleet | #EC2.#EIP | #EC2.#EIPAssociation | #EC2.#EgressOnlyInternetGateway | #EC2.#FlowLog | #EC2.#GatewayRouteTableAssociation | #EC2.#Host | #EC2.#Instance | #EC2.#InternetGateway | #EC2.#LaunchTemplate | #EC2.#NatGateway | #EC2.#NetworkAcl | #EC2.#NetworkAclEntry | #EC2.#NetworkInterface | #EC2.#NetworkInterfaceAttachment | #EC2.#NetworkInterfacePermission | #EC2.#PlacementGroup | #EC2.#Route | #EC2.#RouteTable | #EC2.#SecurityGroup | #EC2.#SecurityGroupEgress | #EC2.#SecurityGroupIngress | #EC2.#SpotFleet | #EC2.#Subnet | #EC2.#SubnetCidrBlock | #EC2.#SubnetNetworkAclAssociation | #EC2.#SubnetRouteTableAssociation | #EC2.#TransitGateway | #EC2.#TransitGatewayRoute | #EC2.#TransitGatewayRouteTable | #EC2.#TransitGatewayRouteTableAssociation | #EC2.#TransitGatewayRouteTablePropagation | #EC2.#VPC | #EC2.#VPCCidrBlock | #EC2.#VPCDHCPOptionsAssociation | #EC2.#VPCEndpoint | #EC2.#VPCEndpointConnectionNotification | #EC2.#VPCEndpointService | #EC2.#VPCEndpointServicePermissions | #EC2.#VPCGatewayAttachment | #EC2.#VPCPeeringConnection | #EC2.#VPNConnection | #EC2.#VPNConnectionRoute | #EC2.#VPNGateway | #EC2.#VPNGatewayRoutePropagation | #EC2.#Volume | #EC2.#VolumeAttachment | #ECR.#RegistryPolicy | #ECR.#ReplicationConfiguration | #ECR.#Repository | #ECS.#CapacityProvider | #ECS.#Cluster | #ECS.#ClusterCapacityProviderAssociations | #ECS.#PrimaryTaskSet | #ECS.#Service | #ECS.#TaskDefinition | #ECS.#TaskSet | #EFS.#AccessPoint | #EFS.#FileSystem | #EFS.#MountTarget | #EKS.#Addon | #EKS.#Cluster | #EKS.#FargateProfile | #EKS.#Nodegroup | #EMR.#Cluster | #EMR.#InstanceFleetConfig | #EMR.#InstanceGroupConfig | #EMR.#SecurityConfiguration | #EMR.#Step | #ElastiCache.#CacheCluster | #ElastiCache.#ParameterGroup | #ElastiCache.#ReplicationGroup | #ElastiCache.#SecurityGroup | #ElastiCache.#SecurityGroupIngress | #ElastiCache.#SubnetGroup | #ElastiCache.#User | #ElastiCache.#UserGroup | #ElasticBeanstalk.#Application | #ElasticBeanstalk.#ApplicationVersion | #ElasticBeanstalk.#ConfigurationTemplate | #ElasticBeanstalk.#Environment | #ElasticLoadBalancing.#LoadBalancer | #ElasticLoadBalancingV2.#Listener | #ElasticLoadBalancingV2.#ListenerCertificate | #ElasticLoadBalancingV2.#ListenerRule | #ElasticLoadBalancingV2.#LoadBalancer | #ElasticLoadBalancingV2.#TargetGroup | #Elasticsearch.#Domain | #Events.#Rule | #GlobalAccelerator.#Accelerator | #GlobalAccelerator.#EndpointGroup | #GlobalAccelerator.#Listener | #Glue.#Classifier | #Glue.#Connection | #Glue.#Crawler | #Glue.#DataCatalogEncryptionSettings | #Glue.#Database | #Glue.#DevEndpoint | #Glue.#Job | #Glue.#MLTransform | #Glue.#Partition | #Glue.#Registry | #Glue.#Schema | #Glue.#SchemaVersion | #Glue.#SchemaVersionMetadata | #Glue.#SecurityConfiguration | #Glue.#Table | #Glue.#Trigger | #Glue.#Workflow | #GuardDuty.#Detector | #GuardDuty.#Filter | #GuardDuty.#IPSet | #GuardDuty.#Master | #GuardDuty.#Member | #GuardDuty.#ThreatIntelSet | #IAM.#AccessKey | #IAM.#Group | #IAM.#InstanceProfile | #IAM.#ManagedPolicy | #IAM.#Policy | #IAM.#Role | #IAM.#User | #IAM.#UserToGroupAddition | #ImageBuilder.#Component | #ImageBuilder.#ContainerRecipe | #ImageBuilder.#DistributionConfiguration | #ImageBuilder.#Image | #ImageBuilder.#ImagePipeline | #ImageBuilder.#ImageRecipe | #ImageBuilder.#InfrastructureConfiguration | #KMS.#Alias | #KMS.#Key | #Kinesis.#Stream | #Kinesis.#StreamConsumer | #KinesisFirehose.#DeliveryStream | #Lambda.#Alias | #Lambda.#EventInvokeConfig | #Lambda.#EventSourceMapping | #Lambda.#Function | #Lambda.#Permission | #Lambda.#Version | #Logs.#Destination | #Logs.#LogGroup | #Logs.#LogStream | #Logs.#MetricFilter | #Logs.#QueryDefinition | #Logs.#SubscriptionFilter | #Macie.#CustomDataIdentifier | #Macie.#FindingsFilter | #Macie.#Session | #NetworkManager.#CustomerGatewayAssociation | #NetworkManager.#Device | #NetworkManager.#GlobalNetwork | #NetworkManager.#Link | #NetworkManager.#LinkAssociation | #NetworkManager.#Site | #NetworkManager.#TransitGatewayRegistration | #RAM.#ResourceShare | #RDS.#DBCluster | #RDS.#DBClusterParameterGroup | #RDS.#DBInstance | #RDS.#DBParameterGroup | #RDS.#DBSecurityGroup | #RDS.#DBSecurityGroupIngress | #RDS.#DBSubnetGroup | #RDS.#EventSubscription | #RDS.#OptionGroup | #Redshift.#Cluster | #Redshift.#ClusterParameterGroup | #Redshift.#ClusterSecurityGroup | #Redshift.#ClusterSecurityGroupIngress | #Redshift.#ClusterSubnetGroup | #ResourceGroups.#Group | #Route53.#HealthCheck | #Route53.#HostedZone | #Route53.#RecordSet | #Route53.#RecordSetGroup | #S3.#AccessPoint | #S3.#Bucket | #S3.#BucketPolicy | #SNS.#Subscription | #SNS.#Topic | #SNS.#TopicPolicy | #SQS.#Queue | #SQS.#QueuePolicy | #SSM.#Association | #SSM.#Document | #SSM.#PatchBaseline | #SSM.#ResourceDataSync | #SecretsManager.#ResourcePolicy | #SecretsManager.#RotationSchedule | #SecretsManager.#Secret | #SecretsManager.#SecretTargetAttachment | #SecurityHub.#Hub | #ServiceCatalog.#AcceptedPortfolioShare | #ServiceCatalog.#CloudFormationProduct | #ServiceCatalog.#CloudFormationProvisionedProduct | #ServiceCatalog.#LaunchNotificationConstraint | #ServiceCatalog.#LaunchRoleConstraint | #ServiceCatalog.#LaunchTemplateConstraint | #ServiceCatalog.#Portfolio | #ServiceCatalog.#PortfolioPrincipalAssociation | #ServiceCatalog.#PortfolioProductAssociation | #ServiceCatalog.#PortfolioShare | #ServiceCatalog.#ResourceUpdateConstraint | #ServiceCatalog.#ServiceAction | #ServiceCatalog.#ServiceActionAssociation | #ServiceCatalog.#StackSetConstraint | #ServiceCatalog.#TagOption | #ServiceCatalog.#TagOptionAssociation | #StepFunctions.#Activity | #StepFunctions.#StateMachine | #WAF.#ByteMatchSet | #WAF.#IPSet | #WAF.#Rule | #WAF.#SizeConstraintSet | #WAF.#SqlInjectionMatchSet | #WAF.#WebACL | #WAF.#XssMatchSet
	Outputs?: [=~"[a-zA-Z0-9]"]: {
		Description?: string
		Value:        _
		Condition?:   string
		Export?: Name: _
	}
}