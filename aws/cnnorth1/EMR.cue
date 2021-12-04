package cnnorth1

import (
	"github.com/cue-sh/cfn-cue/aws/fn"
	"strings"
)

#EMR: {
	#Cluster: {
		Type: "AWS::EMR::Cluster"
		Properties: {
			AdditionalInfo?: *{
				[string]: _
			} | fn.#Fn
			Applications?: *[...{
				AdditionalInfo?: *{
					[string]: *string | fn.#Fn
				} | fn.#If
				Args?:    [...(*string | fn.#Fn)] | (*string | fn.#Fn)
				Name?:    *string | fn.#Fn
				Version?: *string | fn.#Fn
			}] | fn.#If
			AutoScalingRole?:  *(strings.MinRunes(1) & strings.MaxRunes(64)) | fn.#Fn
			BootstrapActions?: *[...{
				Name:                  *string | fn.#Fn
				ScriptBootstrapAction: *{
					Args?: [...(*string | fn.#Fn)] | (*string | fn.#Fn)
					Path:  *string | fn.#Fn
				} | fn.#If
			}] | fn.#If
			Configurations?:    *[..._#Configuration] | fn.#If
			CustomAmiId?:       *string | fn.#Fn
			EbsRootVolumeSize?: *int | fn.#Fn
			Instances:          *{
				AdditionalMasterSecurityGroups?: [...(*string | fn.#Fn)] | (*string | fn.#Fn)
				AdditionalSlaveSecurityGroups?:  [...(*string | fn.#Fn)] | (*string | fn.#Fn)
				CoreInstanceFleet?:              *{
					InstanceTypeConfigs?: *[...{
						BidPrice?:                            *string | fn.#Fn
						BidPriceAsPercentageOfOnDemandPrice?: *number | fn.#Fn
						Configurations?:                      *[..._#Configuration] | fn.#If
						CustomAmiId?:                         *string | fn.#Fn
						EbsConfiguration?:                    *{
							EbsBlockDeviceConfigs?: *[...{
								VolumeSpecification: *{
									Iops?:      *int | fn.#Fn
									SizeInGB:   *int | fn.#Fn
									VolumeType: *string | fn.#Fn
								} | fn.#If
								VolumesPerInstance?: *int | fn.#Fn
							}] | fn.#If
							EbsOptimized?: *bool | fn.#Fn
						} | fn.#If
						InstanceType:      *("c1.medium" | "c1.xlarge" | "c3.2xlarge" | "c3.4xlarge" | "c3.8xlarge" | "c3.xlarge" | "c4.2xlarge" | "c4.4xlarge" | "c4.8xlarge" | "c4.large" | "c4.xlarge" | "c5.12xlarge" | "c5.24xlarge" | "c5d.18xlarge" | "c5d.2xlarge" | "c5d.4xlarge" | "c5d.9xlarge" | "c5d.xlarge" | "c6g.12xlarge" | "c6g.16xlarge" | "c6g.2xlarge" | "c6g.4xlarge" | "c6g.8xlarge" | "c6g.xlarge" | "d2.2xlarge" | "d2.4xlarge" | "d2.8xlarge" | "d2.xlarge" | "g2.2xlarge" | "g3s.xlarge" | "i2.2xlarge" | "i2.4xlarge" | "i2.8xlarge" | "i2.xlarge" | "i3.16xlarge" | "i3.2xlarge" | "i3.4xlarge" | "i3.large" | "m1.large" | "m1.medium" | "m1.small" | "m1.xlarge" | "m2.2xlarge" | "m2.4xlarge" | "m2.xlarge" | "m3.2xlarge" | "m3.xlarge" | "m4.10xlarge" | "m4.2xlarge" | "m4.4xlarge" | "m4.large" | "m4.xlarge" | "m5.12xlarge" | "m5.16xlarge" | "m5.24xlarge" | "m5.2xlarge" | "m5.4xlarge" | "m5.8xlarge" | "m5.xlarge" | "m5a.12xlarge" | "m5a.16xlarge" | "m5a.24xlarge" | "m5a.2xlarge" | "m5a.4xlarge" | "m5a.8xlarge" | "m5a.xlarge" | "m5d.12xlarge" | "m5d.16xlarge" | "m5d.24xlarge" | "m5d.2xlarge" | "m5d.4xlarge" | "m5d.8xlarge" | "m5d.xlarge" | "m6g.12xlarge" | "m6g.16xlarge" | "m6g.2xlarge" | "m6g.4xlarge" | "m6g.8xlarge" | "m6g.xlarge" | "p2.8xlarge" | "p2.xlarge" | "p3.16xlarge" | "p3.2xlarge" | "p3.8xlarge" | "r3.2xlarge" | "r3.4xlarge" | "r3.8xlarge" | "r3.xlarge" | "r4.16xlarge" | "r4.2xlarge" | "r4.4xlarge" | "r4.8xlarge" | "r4.large" | "r4.xlarge" | "r5.12xlarge" | "r5.16xlarge" | "r5.24xlarge" | "r5.2xlarge" | "r5.4xlarge" | "r5.8xlarge" | "r5.xlarge" | "r5a.12xlarge" | "r5a.16xlarge" | "r5a.24xlarge" | "r5a.2xlarge" | "r5a.4xlarge" | "r5a.8xlarge" | "r5a.xlarge" | "r5d.12xlarge" | "r5d.16xlarge" | "r5d.24xlarge" | "r5d.2xlarge" | "r5d.4xlarge" | "r5d.8xlarge" | "r5d.xlarge" | "r6g.12xlarge" | "r6g.16xlarge" | "r6g.2xlarge" | "r6g.4xlarge" | "r6g.8xlarge" | "r6g.xlarge") | fn.#Fn
						WeightedCapacity?: *int | fn.#Fn
					}] | fn.#If
					LaunchSpecifications?: *{
						OnDemandSpecification?: *{
							AllocationStrategy: *string | fn.#Fn
						} | fn.#If
						SpotSpecification?: *{
							AllocationStrategy?:    *string | fn.#Fn
							BlockDurationMinutes?:  *int | fn.#Fn
							TimeoutAction:          *string | fn.#Fn
							TimeoutDurationMinutes: *int | fn.#Fn
						} | fn.#If
					} | fn.#If
					Name?:                   *string | fn.#Fn
					TargetOnDemandCapacity?: *int | fn.#Fn
					TargetSpotCapacity?:     *int | fn.#Fn
				} | fn.#If
				CoreInstanceGroup?: *{
					AutoScalingPolicy?: *{
						Constraints: *{
							MaxCapacity: *int | fn.#Fn
							MinCapacity: *int | fn.#Fn
						} | fn.#If
						Rules: *[...{
							Action: *{
								Market?:                          *string | fn.#Fn
								SimpleScalingPolicyConfiguration: *{
									AdjustmentType?:   *string | fn.#Fn
									CoolDown?:         *int | fn.#Fn
									ScalingAdjustment: *int | fn.#Fn
								} | fn.#If
							} | fn.#If
							Description?: *string | fn.#Fn
							Name:         *string | fn.#Fn
							Trigger:      *{
								CloudWatchAlarmDefinition: *{
									ComparisonOperator: *string | fn.#Fn
									Dimensions?:        *[...{
										Key:   *string | fn.#Fn
										Value: *string | fn.#Fn
									}] | fn.#If
									EvaluationPeriods?: *int | fn.#Fn
									MetricName:         *string | fn.#Fn
									Namespace?:         *string | fn.#Fn
									Period:             *int | fn.#Fn
									Statistic?:         *string | fn.#Fn
									Threshold:          *number | fn.#Fn
									Unit?:              *string | fn.#Fn
								} | fn.#If
							} | fn.#If
						}] | fn.#If
					} | fn.#If
					BidPrice?:         *string | fn.#Fn
					Configurations?:   *[..._#Configuration] | fn.#If
					CustomAmiId?:      *string | fn.#Fn
					EbsConfiguration?: *{
						EbsBlockDeviceConfigs?: *[...{
							VolumeSpecification: *{
								Iops?:      *int | fn.#Fn
								SizeInGB:   *int | fn.#Fn
								VolumeType: *string | fn.#Fn
							} | fn.#If
							VolumesPerInstance?: *int | fn.#Fn
						}] | fn.#If
						EbsOptimized?: *bool | fn.#Fn
					} | fn.#If
					InstanceCount: *int | fn.#Fn
					InstanceType:  *("c1.medium" | "c1.xlarge" | "c3.2xlarge" | "c3.4xlarge" | "c3.8xlarge" | "c3.xlarge" | "c4.2xlarge" | "c4.4xlarge" | "c4.8xlarge" | "c4.large" | "c4.xlarge" | "c5.12xlarge" | "c5.24xlarge" | "c5d.18xlarge" | "c5d.2xlarge" | "c5d.4xlarge" | "c5d.9xlarge" | "c5d.xlarge" | "c6g.12xlarge" | "c6g.16xlarge" | "c6g.2xlarge" | "c6g.4xlarge" | "c6g.8xlarge" | "c6g.xlarge" | "d2.2xlarge" | "d2.4xlarge" | "d2.8xlarge" | "d2.xlarge" | "g2.2xlarge" | "g3s.xlarge" | "i2.2xlarge" | "i2.4xlarge" | "i2.8xlarge" | "i2.xlarge" | "i3.16xlarge" | "i3.2xlarge" | "i3.4xlarge" | "i3.large" | "m1.large" | "m1.medium" | "m1.small" | "m1.xlarge" | "m2.2xlarge" | "m2.4xlarge" | "m2.xlarge" | "m3.2xlarge" | "m3.xlarge" | "m4.10xlarge" | "m4.2xlarge" | "m4.4xlarge" | "m4.large" | "m4.xlarge" | "m5.12xlarge" | "m5.16xlarge" | "m5.24xlarge" | "m5.2xlarge" | "m5.4xlarge" | "m5.8xlarge" | "m5.xlarge" | "m5a.12xlarge" | "m5a.16xlarge" | "m5a.24xlarge" | "m5a.2xlarge" | "m5a.4xlarge" | "m5a.8xlarge" | "m5a.xlarge" | "m5d.12xlarge" | "m5d.16xlarge" | "m5d.24xlarge" | "m5d.2xlarge" | "m5d.4xlarge" | "m5d.8xlarge" | "m5d.xlarge" | "m6g.12xlarge" | "m6g.16xlarge" | "m6g.2xlarge" | "m6g.4xlarge" | "m6g.8xlarge" | "m6g.xlarge" | "p2.8xlarge" | "p2.xlarge" | "p3.16xlarge" | "p3.2xlarge" | "p3.8xlarge" | "r3.2xlarge" | "r3.4xlarge" | "r3.8xlarge" | "r3.xlarge" | "r4.16xlarge" | "r4.2xlarge" | "r4.4xlarge" | "r4.8xlarge" | "r4.large" | "r4.xlarge" | "r5.12xlarge" | "r5.16xlarge" | "r5.24xlarge" | "r5.2xlarge" | "r5.4xlarge" | "r5.8xlarge" | "r5.xlarge" | "r5a.12xlarge" | "r5a.16xlarge" | "r5a.24xlarge" | "r5a.2xlarge" | "r5a.4xlarge" | "r5a.8xlarge" | "r5a.xlarge" | "r5d.12xlarge" | "r5d.16xlarge" | "r5d.24xlarge" | "r5d.2xlarge" | "r5d.4xlarge" | "r5d.8xlarge" | "r5d.xlarge" | "r6g.12xlarge" | "r6g.16xlarge" | "r6g.2xlarge" | "r6g.4xlarge" | "r6g.8xlarge" | "r6g.xlarge") | fn.#Fn
					Market?:       *string | fn.#Fn
					Name?:         *string | fn.#Fn
				} | fn.#If
				Ec2KeyName?:                    *string | fn.#Fn
				Ec2SubnetId?:                   *string | fn.#Fn
				Ec2SubnetIds?:                  [...(*string | fn.#Fn)] | (*string | fn.#Fn)
				EmrManagedMasterSecurityGroup?: *string | fn.#Fn
				EmrManagedSlaveSecurityGroup?:  *string | fn.#Fn
				HadoopVersion?:                 *string | fn.#Fn
				KeepJobFlowAliveWhenNoSteps?:   *bool | fn.#Fn
				MasterInstanceFleet?:           *{
					InstanceTypeConfigs?: *[...{
						BidPrice?:                            *string | fn.#Fn
						BidPriceAsPercentageOfOnDemandPrice?: *number | fn.#Fn
						Configurations?:                      *[..._#Configuration] | fn.#If
						CustomAmiId?:                         *string | fn.#Fn
						EbsConfiguration?:                    *{
							EbsBlockDeviceConfigs?: *[...{
								VolumeSpecification: *{
									Iops?:      *int | fn.#Fn
									SizeInGB:   *int | fn.#Fn
									VolumeType: *string | fn.#Fn
								} | fn.#If
								VolumesPerInstance?: *int | fn.#Fn
							}] | fn.#If
							EbsOptimized?: *bool | fn.#Fn
						} | fn.#If
						InstanceType:      *("c1.medium" | "c1.xlarge" | "c3.2xlarge" | "c3.4xlarge" | "c3.8xlarge" | "c3.xlarge" | "c4.2xlarge" | "c4.4xlarge" | "c4.8xlarge" | "c4.large" | "c4.xlarge" | "c5.12xlarge" | "c5.24xlarge" | "c5d.18xlarge" | "c5d.2xlarge" | "c5d.4xlarge" | "c5d.9xlarge" | "c5d.xlarge" | "c6g.12xlarge" | "c6g.16xlarge" | "c6g.2xlarge" | "c6g.4xlarge" | "c6g.8xlarge" | "c6g.xlarge" | "d2.2xlarge" | "d2.4xlarge" | "d2.8xlarge" | "d2.xlarge" | "g2.2xlarge" | "g3s.xlarge" | "i2.2xlarge" | "i2.4xlarge" | "i2.8xlarge" | "i2.xlarge" | "i3.16xlarge" | "i3.2xlarge" | "i3.4xlarge" | "i3.large" | "m1.large" | "m1.medium" | "m1.small" | "m1.xlarge" | "m2.2xlarge" | "m2.4xlarge" | "m2.xlarge" | "m3.2xlarge" | "m3.xlarge" | "m4.10xlarge" | "m4.2xlarge" | "m4.4xlarge" | "m4.large" | "m4.xlarge" | "m5.12xlarge" | "m5.16xlarge" | "m5.24xlarge" | "m5.2xlarge" | "m5.4xlarge" | "m5.8xlarge" | "m5.xlarge" | "m5a.12xlarge" | "m5a.16xlarge" | "m5a.24xlarge" | "m5a.2xlarge" | "m5a.4xlarge" | "m5a.8xlarge" | "m5a.xlarge" | "m5d.12xlarge" | "m5d.16xlarge" | "m5d.24xlarge" | "m5d.2xlarge" | "m5d.4xlarge" | "m5d.8xlarge" | "m5d.xlarge" | "m6g.12xlarge" | "m6g.16xlarge" | "m6g.2xlarge" | "m6g.4xlarge" | "m6g.8xlarge" | "m6g.xlarge" | "p2.8xlarge" | "p2.xlarge" | "p3.16xlarge" | "p3.2xlarge" | "p3.8xlarge" | "r3.2xlarge" | "r3.4xlarge" | "r3.8xlarge" | "r3.xlarge" | "r4.16xlarge" | "r4.2xlarge" | "r4.4xlarge" | "r4.8xlarge" | "r4.large" | "r4.xlarge" | "r5.12xlarge" | "r5.16xlarge" | "r5.24xlarge" | "r5.2xlarge" | "r5.4xlarge" | "r5.8xlarge" | "r5.xlarge" | "r5a.12xlarge" | "r5a.16xlarge" | "r5a.24xlarge" | "r5a.2xlarge" | "r5a.4xlarge" | "r5a.8xlarge" | "r5a.xlarge" | "r5d.12xlarge" | "r5d.16xlarge" | "r5d.24xlarge" | "r5d.2xlarge" | "r5d.4xlarge" | "r5d.8xlarge" | "r5d.xlarge" | "r6g.12xlarge" | "r6g.16xlarge" | "r6g.2xlarge" | "r6g.4xlarge" | "r6g.8xlarge" | "r6g.xlarge") | fn.#Fn
						WeightedCapacity?: *int | fn.#Fn
					}] | fn.#If
					LaunchSpecifications?: *{
						OnDemandSpecification?: *{
							AllocationStrategy: *string | fn.#Fn
						} | fn.#If
						SpotSpecification?: *{
							AllocationStrategy?:    *string | fn.#Fn
							BlockDurationMinutes?:  *int | fn.#Fn
							TimeoutAction:          *string | fn.#Fn
							TimeoutDurationMinutes: *int | fn.#Fn
						} | fn.#If
					} | fn.#If
					Name?:                   *string | fn.#Fn
					TargetOnDemandCapacity?: *int | fn.#Fn
					TargetSpotCapacity?:     *int | fn.#Fn
				} | fn.#If
				MasterInstanceGroup?: *{
					AutoScalingPolicy?: *{
						Constraints: *{
							MaxCapacity: *int | fn.#Fn
							MinCapacity: *int | fn.#Fn
						} | fn.#If
						Rules: *[...{
							Action: *{
								Market?:                          *string | fn.#Fn
								SimpleScalingPolicyConfiguration: *{
									AdjustmentType?:   *string | fn.#Fn
									CoolDown?:         *int | fn.#Fn
									ScalingAdjustment: *int | fn.#Fn
								} | fn.#If
							} | fn.#If
							Description?: *string | fn.#Fn
							Name:         *string | fn.#Fn
							Trigger:      *{
								CloudWatchAlarmDefinition: *{
									ComparisonOperator: *string | fn.#Fn
									Dimensions?:        *[...{
										Key:   *string | fn.#Fn
										Value: *string | fn.#Fn
									}] | fn.#If
									EvaluationPeriods?: *int | fn.#Fn
									MetricName:         *string | fn.#Fn
									Namespace?:         *string | fn.#Fn
									Period:             *int | fn.#Fn
									Statistic?:         *string | fn.#Fn
									Threshold:          *number | fn.#Fn
									Unit?:              *string | fn.#Fn
								} | fn.#If
							} | fn.#If
						}] | fn.#If
					} | fn.#If
					BidPrice?:         *string | fn.#Fn
					Configurations?:   *[..._#Configuration] | fn.#If
					CustomAmiId?:      *string | fn.#Fn
					EbsConfiguration?: *{
						EbsBlockDeviceConfigs?: *[...{
							VolumeSpecification: *{
								Iops?:      *int | fn.#Fn
								SizeInGB:   *int | fn.#Fn
								VolumeType: *string | fn.#Fn
							} | fn.#If
							VolumesPerInstance?: *int | fn.#Fn
						}] | fn.#If
						EbsOptimized?: *bool | fn.#Fn
					} | fn.#If
					InstanceCount: *int | fn.#Fn
					InstanceType:  *("c1.medium" | "c1.xlarge" | "c3.2xlarge" | "c3.4xlarge" | "c3.8xlarge" | "c3.xlarge" | "c4.2xlarge" | "c4.4xlarge" | "c4.8xlarge" | "c4.large" | "c4.xlarge" | "c5.12xlarge" | "c5.24xlarge" | "c5d.18xlarge" | "c5d.2xlarge" | "c5d.4xlarge" | "c5d.9xlarge" | "c5d.xlarge" | "c6g.12xlarge" | "c6g.16xlarge" | "c6g.2xlarge" | "c6g.4xlarge" | "c6g.8xlarge" | "c6g.xlarge" | "d2.2xlarge" | "d2.4xlarge" | "d2.8xlarge" | "d2.xlarge" | "g2.2xlarge" | "g3s.xlarge" | "i2.2xlarge" | "i2.4xlarge" | "i2.8xlarge" | "i2.xlarge" | "i3.16xlarge" | "i3.2xlarge" | "i3.4xlarge" | "i3.large" | "m1.large" | "m1.medium" | "m1.small" | "m1.xlarge" | "m2.2xlarge" | "m2.4xlarge" | "m2.xlarge" | "m3.2xlarge" | "m3.xlarge" | "m4.10xlarge" | "m4.2xlarge" | "m4.4xlarge" | "m4.large" | "m4.xlarge" | "m5.12xlarge" | "m5.16xlarge" | "m5.24xlarge" | "m5.2xlarge" | "m5.4xlarge" | "m5.8xlarge" | "m5.xlarge" | "m5a.12xlarge" | "m5a.16xlarge" | "m5a.24xlarge" | "m5a.2xlarge" | "m5a.4xlarge" | "m5a.8xlarge" | "m5a.xlarge" | "m5d.12xlarge" | "m5d.16xlarge" | "m5d.24xlarge" | "m5d.2xlarge" | "m5d.4xlarge" | "m5d.8xlarge" | "m5d.xlarge" | "m6g.12xlarge" | "m6g.16xlarge" | "m6g.2xlarge" | "m6g.4xlarge" | "m6g.8xlarge" | "m6g.xlarge" | "p2.8xlarge" | "p2.xlarge" | "p3.16xlarge" | "p3.2xlarge" | "p3.8xlarge" | "r3.2xlarge" | "r3.4xlarge" | "r3.8xlarge" | "r3.xlarge" | "r4.16xlarge" | "r4.2xlarge" | "r4.4xlarge" | "r4.8xlarge" | "r4.large" | "r4.xlarge" | "r5.12xlarge" | "r5.16xlarge" | "r5.24xlarge" | "r5.2xlarge" | "r5.4xlarge" | "r5.8xlarge" | "r5.xlarge" | "r5a.12xlarge" | "r5a.16xlarge" | "r5a.24xlarge" | "r5a.2xlarge" | "r5a.4xlarge" | "r5a.8xlarge" | "r5a.xlarge" | "r5d.12xlarge" | "r5d.16xlarge" | "r5d.24xlarge" | "r5d.2xlarge" | "r5d.4xlarge" | "r5d.8xlarge" | "r5d.xlarge" | "r6g.12xlarge" | "r6g.16xlarge" | "r6g.2xlarge" | "r6g.4xlarge" | "r6g.8xlarge" | "r6g.xlarge") | fn.#Fn
					Market?:       *string | fn.#Fn
					Name?:         *string | fn.#Fn
				} | fn.#If
				Placement?: *{
					AvailabilityZone: *(=~#"[a-z0-9-]+"#) | fn.#Fn
				} | fn.#If
				ServiceAccessSecurityGroup?: *string | fn.#Fn
				TerminationProtected?:       *bool | fn.#Fn
			} | fn.#If
			JobFlowRole:         *(=~#"[a-zA-Z0-9+=,.@\-_]+"#) | fn.#Fn
			KerberosAttributes?: *{
				ADDomainJoinPassword?:             *string | fn.#Fn
				ADDomainJoinUser?:                 *string | fn.#Fn
				CrossRealmTrustPrincipalPassword?: *string | fn.#Fn
				KdcAdminPassword:                  *string | fn.#Fn
				Realm:                             *string | fn.#Fn
			} | fn.#If
			LogEncryptionKmsKeyId?: *string | fn.#Fn
			LogUri?:                *string | fn.#Fn
			ManagedScalingPolicy?:  *{
				ComputeLimits?: *{
					MaximumCapacityUnits:          *int | fn.#Fn
					MaximumCoreCapacityUnits?:     *int | fn.#Fn
					MaximumOnDemandCapacityUnits?: *int | fn.#Fn
					MinimumCapacityUnits:          *int | fn.#Fn
					UnitType:                      *string | fn.#Fn
				} | fn.#If
			} | fn.#If
			Name:                   *string | fn.#Fn
			ReleaseLabel?:          *string | fn.#Fn
			ScaleDownBehavior?:     *string | fn.#Fn
			SecurityConfiguration?: *string | fn.#Fn
			ServiceRole:            *(strings.MinRunes(1) & strings.MaxRunes(64)) | fn.#Fn
			StepConcurrencyLevel?:  *int | fn.#Fn
			Steps?:                 *[...{
				ActionOnFailure?: *string | fn.#Fn
				HadoopJarStep:    *{
					Args?:           [...(*string | fn.#Fn)] | (*string | fn.#Fn)
					Jar:             *string | fn.#Fn
					MainClass?:      *string | fn.#Fn
					StepProperties?: *[...{
						Key?:   *string | fn.#Fn
						Value?: *string | fn.#Fn
					}] | fn.#If
				} | fn.#If
				Name: *string | fn.#Fn
			}] | fn.#If
			Tags?: *[...{
				Key:   *string | fn.#Fn
				Value: *string | fn.#Fn
			}] | fn.#If
			VisibleToAllUsers?: *bool | fn.#Fn
			_#Configuration: {
				Classification?:          *string | fn.#Fn
				ConfigurationProperties?: *{
					[string]: *string | fn.#Fn
				} | fn.#If
				Configurations?: *[..._#Configuration] | fn.#If
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#InstanceFleetConfig: {
		Type: "AWS::EMR::InstanceFleetConfig"
		Properties: {
			ClusterId:            *string | fn.#Fn
			InstanceFleetType:    *string | fn.#Fn
			InstanceTypeConfigs?: *[...{
				BidPrice?:                            *string | fn.#Fn
				BidPriceAsPercentageOfOnDemandPrice?: *number | fn.#Fn
				Configurations?:                      *[..._#Configuration] | fn.#If
				CustomAmiId?:                         *string | fn.#Fn
				EbsConfiguration?:                    *{
					EbsBlockDeviceConfigs?: *[...{
						VolumeSpecification: *{
							Iops?:      *int | fn.#Fn
							SizeInGB:   *int | fn.#Fn
							VolumeType: *string | fn.#Fn
						} | fn.#If
						VolumesPerInstance?: *int | fn.#Fn
					}] | fn.#If
					EbsOptimized?: *bool | fn.#Fn
				} | fn.#If
				InstanceType:      *("c1.medium" | "c1.xlarge" | "c3.2xlarge" | "c3.4xlarge" | "c3.8xlarge" | "c3.xlarge" | "c4.2xlarge" | "c4.4xlarge" | "c4.8xlarge" | "c4.large" | "c4.xlarge" | "c5.12xlarge" | "c5.24xlarge" | "c5d.18xlarge" | "c5d.2xlarge" | "c5d.4xlarge" | "c5d.9xlarge" | "c5d.xlarge" | "c6g.12xlarge" | "c6g.16xlarge" | "c6g.2xlarge" | "c6g.4xlarge" | "c6g.8xlarge" | "c6g.xlarge" | "d2.2xlarge" | "d2.4xlarge" | "d2.8xlarge" | "d2.xlarge" | "g2.2xlarge" | "g3s.xlarge" | "i2.2xlarge" | "i2.4xlarge" | "i2.8xlarge" | "i2.xlarge" | "i3.16xlarge" | "i3.2xlarge" | "i3.4xlarge" | "i3.large" | "m1.large" | "m1.medium" | "m1.small" | "m1.xlarge" | "m2.2xlarge" | "m2.4xlarge" | "m2.xlarge" | "m3.2xlarge" | "m3.xlarge" | "m4.10xlarge" | "m4.2xlarge" | "m4.4xlarge" | "m4.large" | "m4.xlarge" | "m5.12xlarge" | "m5.16xlarge" | "m5.24xlarge" | "m5.2xlarge" | "m5.4xlarge" | "m5.8xlarge" | "m5.xlarge" | "m5a.12xlarge" | "m5a.16xlarge" | "m5a.24xlarge" | "m5a.2xlarge" | "m5a.4xlarge" | "m5a.8xlarge" | "m5a.xlarge" | "m5d.12xlarge" | "m5d.16xlarge" | "m5d.24xlarge" | "m5d.2xlarge" | "m5d.4xlarge" | "m5d.8xlarge" | "m5d.xlarge" | "m6g.12xlarge" | "m6g.16xlarge" | "m6g.2xlarge" | "m6g.4xlarge" | "m6g.8xlarge" | "m6g.xlarge" | "p2.8xlarge" | "p2.xlarge" | "p3.16xlarge" | "p3.2xlarge" | "p3.8xlarge" | "r3.2xlarge" | "r3.4xlarge" | "r3.8xlarge" | "r3.xlarge" | "r4.16xlarge" | "r4.2xlarge" | "r4.4xlarge" | "r4.8xlarge" | "r4.large" | "r4.xlarge" | "r5.12xlarge" | "r5.16xlarge" | "r5.24xlarge" | "r5.2xlarge" | "r5.4xlarge" | "r5.8xlarge" | "r5.xlarge" | "r5a.12xlarge" | "r5a.16xlarge" | "r5a.24xlarge" | "r5a.2xlarge" | "r5a.4xlarge" | "r5a.8xlarge" | "r5a.xlarge" | "r5d.12xlarge" | "r5d.16xlarge" | "r5d.24xlarge" | "r5d.2xlarge" | "r5d.4xlarge" | "r5d.8xlarge" | "r5d.xlarge" | "r6g.12xlarge" | "r6g.16xlarge" | "r6g.2xlarge" | "r6g.4xlarge" | "r6g.8xlarge" | "r6g.xlarge") | fn.#Fn
				WeightedCapacity?: *int | fn.#Fn
			}] | fn.#If
			LaunchSpecifications?: *{
				OnDemandSpecification?: *{
					AllocationStrategy: *string | fn.#Fn
				} | fn.#If
				SpotSpecification?: *{
					AllocationStrategy?:    *string | fn.#Fn
					BlockDurationMinutes?:  *int | fn.#Fn
					TimeoutAction:          *string | fn.#Fn
					TimeoutDurationMinutes: *int | fn.#Fn
				} | fn.#If
			} | fn.#If
			Name?:                   *string | fn.#Fn
			TargetOnDemandCapacity?: *int | fn.#Fn
			TargetSpotCapacity?:     *int | fn.#Fn
			_#Configuration: {
				Classification?:          *string | fn.#Fn
				ConfigurationProperties?: *{
					[string]: *string | fn.#Fn
				} | fn.#If
				Configurations?: *[..._#Configuration] | fn.#If
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#InstanceGroupConfig: {
		Type: "AWS::EMR::InstanceGroupConfig"
		Properties: {
			AutoScalingPolicy?: *{
				Constraints: *{
					MaxCapacity: *int | fn.#Fn
					MinCapacity: *int | fn.#Fn
				} | fn.#If
				Rules: *[...{
					Action: *{
						Market?:                          *string | fn.#Fn
						SimpleScalingPolicyConfiguration: *{
							AdjustmentType?:   *string | fn.#Fn
							CoolDown?:         *int | fn.#Fn
							ScalingAdjustment: *int | fn.#Fn
						} | fn.#If
					} | fn.#If
					Description?: *string | fn.#Fn
					Name:         *string | fn.#Fn
					Trigger:      *{
						CloudWatchAlarmDefinition: *{
							ComparisonOperator: *string | fn.#Fn
							Dimensions?:        *[...{
								Key:   *string | fn.#Fn
								Value: *string | fn.#Fn
							}] | fn.#If
							EvaluationPeriods?: *int | fn.#Fn
							MetricName:         *string | fn.#Fn
							Namespace?:         *string | fn.#Fn
							Period:             *int | fn.#Fn
							Statistic?:         *string | fn.#Fn
							Threshold:          *number | fn.#Fn
							Unit?:              *string | fn.#Fn
						} | fn.#If
					} | fn.#If
				}] | fn.#If
			} | fn.#If
			BidPrice?:         *string | fn.#Fn
			Configurations?:   *[..._#Configuration] | fn.#If
			CustomAmiId?:      *string | fn.#Fn
			EbsConfiguration?: *{
				EbsBlockDeviceConfigs?: *[...{
					VolumeSpecification: *{
						Iops?:      *int | fn.#Fn
						SizeInGB:   *int | fn.#Fn
						VolumeType: *string | fn.#Fn
					} | fn.#If
					VolumesPerInstance?: *int | fn.#Fn
				}] | fn.#If
				EbsOptimized?: *bool | fn.#Fn
			} | fn.#If
			InstanceCount: *int | fn.#Fn
			InstanceRole:  *string | fn.#Fn
			InstanceType:  *("c1.medium" | "c1.xlarge" | "c3.2xlarge" | "c3.4xlarge" | "c3.8xlarge" | "c3.xlarge" | "c4.2xlarge" | "c4.4xlarge" | "c4.8xlarge" | "c4.large" | "c4.xlarge" | "c5.12xlarge" | "c5.24xlarge" | "c5d.18xlarge" | "c5d.2xlarge" | "c5d.4xlarge" | "c5d.9xlarge" | "c5d.xlarge" | "c6g.12xlarge" | "c6g.16xlarge" | "c6g.2xlarge" | "c6g.4xlarge" | "c6g.8xlarge" | "c6g.xlarge" | "d2.2xlarge" | "d2.4xlarge" | "d2.8xlarge" | "d2.xlarge" | "g2.2xlarge" | "g3s.xlarge" | "i2.2xlarge" | "i2.4xlarge" | "i2.8xlarge" | "i2.xlarge" | "i3.16xlarge" | "i3.2xlarge" | "i3.4xlarge" | "i3.large" | "m1.large" | "m1.medium" | "m1.small" | "m1.xlarge" | "m2.2xlarge" | "m2.4xlarge" | "m2.xlarge" | "m3.2xlarge" | "m3.xlarge" | "m4.10xlarge" | "m4.2xlarge" | "m4.4xlarge" | "m4.large" | "m4.xlarge" | "m5.12xlarge" | "m5.16xlarge" | "m5.24xlarge" | "m5.2xlarge" | "m5.4xlarge" | "m5.8xlarge" | "m5.xlarge" | "m5a.12xlarge" | "m5a.16xlarge" | "m5a.24xlarge" | "m5a.2xlarge" | "m5a.4xlarge" | "m5a.8xlarge" | "m5a.xlarge" | "m5d.12xlarge" | "m5d.16xlarge" | "m5d.24xlarge" | "m5d.2xlarge" | "m5d.4xlarge" | "m5d.8xlarge" | "m5d.xlarge" | "m6g.12xlarge" | "m6g.16xlarge" | "m6g.2xlarge" | "m6g.4xlarge" | "m6g.8xlarge" | "m6g.xlarge" | "p2.8xlarge" | "p2.xlarge" | "p3.16xlarge" | "p3.2xlarge" | "p3.8xlarge" | "r3.2xlarge" | "r3.4xlarge" | "r3.8xlarge" | "r3.xlarge" | "r4.16xlarge" | "r4.2xlarge" | "r4.4xlarge" | "r4.8xlarge" | "r4.large" | "r4.xlarge" | "r5.12xlarge" | "r5.16xlarge" | "r5.24xlarge" | "r5.2xlarge" | "r5.4xlarge" | "r5.8xlarge" | "r5.xlarge" | "r5a.12xlarge" | "r5a.16xlarge" | "r5a.24xlarge" | "r5a.2xlarge" | "r5a.4xlarge" | "r5a.8xlarge" | "r5a.xlarge" | "r5d.12xlarge" | "r5d.16xlarge" | "r5d.24xlarge" | "r5d.2xlarge" | "r5d.4xlarge" | "r5d.8xlarge" | "r5d.xlarge" | "r6g.12xlarge" | "r6g.16xlarge" | "r6g.2xlarge" | "r6g.4xlarge" | "r6g.8xlarge" | "r6g.xlarge") | fn.#Fn
			JobFlowId:     *string | fn.#Fn
			Market?:       *string | fn.#Fn
			Name?:         *string | fn.#Fn
			_#Configuration: {
				Classification?:          *string | fn.#Fn
				ConfigurationProperties?: *{
					[string]: *string | fn.#Fn
				} | fn.#If
				Configurations?: *[..._#Configuration] | fn.#If
			}
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#SecurityConfiguration: {
		Type: "AWS::EMR::SecurityConfiguration"
		Properties: {
			Name?:                 *string | fn.#Fn
			SecurityConfiguration: *{
				[string]: _
			} | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
	#Step: {
		Type: "AWS::EMR::Step"
		Properties: {
			ActionOnFailure: *string | fn.#Fn
			HadoopJarStep:   *{
				Args?:           [...(*string | fn.#Fn)] | (*string | fn.#Fn)
				Jar:             *string | fn.#Fn
				MainClass?:      *string | fn.#Fn
				StepProperties?: *[...{
					Key?:   *string | fn.#Fn
					Value?: *string | fn.#Fn
				}] | fn.#If
			} | fn.#If
			JobFlowId: *string | fn.#Fn
			Name:      *string | fn.#Fn
		}
		DependsOn?:           string | [...string]
		DeletionPolicy?:      "Delete" | "Retain"
		UpdateReplacePolicy?: "Delete" | "Retain"
		Metadata?: [string]: _
		Condition?: string
	}
}
