<# -- Variables (single DNS name) -- #>

# This directory is used to store your account key and service directory urls as well as orders and related data
$acmeStateDir = "C:\Temp\AcmeState"; # Strings are automatically be converted to AcmeState

# This dns names will be used as identifier
$dnsIdentifiers = New-ACMEIdentifier "www.example.com"; 


<# -- Script (single DNS name) -- #>
Import-Module 'ACME-PS';

# Create a new order 
$order = New-ACMEOrder -State $acmeStateDir -Identifiers $dnsIdentifiers;