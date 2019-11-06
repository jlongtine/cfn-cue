package FSx

import "github.com/TangoGroup/fn"

FileSystem :: {
	Type: "AWS::FSx::FileSystem"
	Properties: {
		BackupId?:            string | fn.Fn
		FileSystemType:       string | fn.Fn
		KmsKeyId?:            string | fn.Fn
		LustreConfiguration?: __LustreConfiguration
		SecurityGroupIds?:    [...string] | fn.Fn
		StorageCapacity?:     (int & (>=300 & <=65536)) | fn.Fn
		SubnetIds:            [...string] | fn.Fn
		Tags?: [...__Tag]
		WindowsConfiguration?: __WindowsConfiguration
	}
	__LustreConfiguration :: {
		ExportPath?:                 string | fn.Fn
		ImportPath?:                 string | fn.Fn
		ImportedFileChunkSize?:      int | fn.Fn
		WeeklyMaintenanceStartTime?: string | fn.Fn
	}
	__SelfManagedActiveDirectoryConfiguration :: {
		DnsIps?:                              [...string] | fn.Fn
		DomainName?:                          string | fn.Fn
		FileSystemAdministratorsGroup?:       string | fn.Fn
		OrganizationalUnitDistinguishedName?: string | fn.Fn
		Password?:                            string | fn.Fn
		UserName?:                            string | fn.Fn
	}
	__WindowsConfiguration :: {
		ActiveDirectoryId?:                       string | fn.Fn
		AutomaticBackupRetentionDays?:            int | fn.Fn
		CopyTagsToBackups?:                       bool | fn.Fn
		DailyAutomaticBackupStartTime?:           string | fn.Fn
		SelfManagedActiveDirectoryConfiguration?: __SelfManagedActiveDirectoryConfiguration
		ThroughputCapacity?:                      int | fn.Fn
		WeeklyMaintenanceStartTime?:              string | fn.Fn
	}
}