
## For a reference of this file's elements, see:
##    https://technet.microsoft.com/library/hh849709.aspx
##    https://technet.microsoft.com/en-us/library/dd878297(v=vs.85).aspx

## 64-bit:
##    %SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe
## 32-bit:
##    %SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe

@{
	RootModule = 'ACMESharpCore.psm1'
	ModuleVersion = '2.0.0'
	GUID = '2DBF7E3F-F830-403A-9300-78A11C7CD00C'
	
	Author = 'https://github.com/PKISharp/ACMESharpCore-PowerShell/graphs/contributors'
	CompanyName = 'https://github.com/PKISharp'
	Copyright = '(c) 2018 Thomas Glatzer. All rights reserved.'	
	
	Description = "PowerShell client module for the ACME protocol"

	RequiredAssemblies = @(
		'./bin/ACMESharpCore.Crypto/ACMESharpCore.Crypto.dll',
		'System.Net.Http')

	DefaultCommandPrefix = 'ACME'
	FunctionsToExport = @(
		"Enable-AccountHandling",
		"Find-Account",
		"Get-Account",
		"New-Account",

		"Enable-AccountKeyHandling",
		"Export-AccountKey",
		"Import-AccountKey",
		"New-AccountKey",

		"Enable-NonceHandling",
		"Get-Nonce",
		"New-Nonce",

		"Enable-ServiceDirectoryHandling",
		"Get-ServiceDirectory",

		"Get-Authorization",
		
		"Get-TermsOfService",
		"New-Identifier",
		"New-Order",
		"Set-AccountKey",
		"Set-Challenge",
		"Show-Challenge"
	)

	AliasesToExport = @(
		"Import-AccountKey"
	)

	# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData = @{

		PSData = @{

			# Tags applied to this module. These help with module discovery in online galleries.
			Tags = @('pki','ssl','tls','security','certificates','letsencrypt','acme','powershell','acmesharp')

			# A URL to the license for this module.
			LicenseUri = 'https://raw.githubusercontent.com/PKISharp/ACMESharpCore-PowerShell/master/LICENSE'

			# A URL to the main website for this project.
			ProjectUri = 'https://github.com/PKISharp/ACMESharpCore-PowerShell'

			# A URL to an icon representing this module.
			IconUri = 'https://raw.githubusercontent.com/PKISharp/ACMESharpCore/master/docs/acmesharp-logo-color.png'

			# ReleaseNotes of this module
			ReleaseNotes = 'Please see the release notes from the release distribution page: https://github.com/PKISharp/ACMESharpCore-PowerShell/releases'

		} # End of PSData hashtable

	} # End of PrivateData hashtable


	############################################################
	## Unused manifest elements reserved for possible future use
	############################################################

	# HelpInfo URI of this module for updateable help
	# HelpInfoURI = ''

	# Modules that must be imported into the global environment prior to importing this module
	# RequiredModules = @()

	# Script files (.ps1) that are run in the caller's environment prior to importing this module.
	# ScriptsToProcess = @()

	# Type files (.ps1xml) to be loaded when importing this module
	# TypesToProcess = @()

	# Format files (.ps1xml) to be loaded when importing this module
	# FormatsToProcess = @()

	# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
	# NestedModules = @()

	# Functions to export from this module
	# FunctionsToExport = '*'

	# Variables to export from this module
	# VariablesToExport = '*'

	# Cmdlets to export from this module
	# CmdletsToExport = '*'

	# Aliases to export from this module
	# AliasesToExport = '*'

	# DSC resources to export from this module
	# DscResourcesToExport = @()

	# List of all modules packaged with this module
	# ModuleList = @()

	# List of all files packaged with this module
	# FileList = @()

}
