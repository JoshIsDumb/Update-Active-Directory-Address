$wichitafalls = @{

 "City" = "Wichita Falls"

 "State" = "Texas"

 "StreetAddress" = "1411 Twin Oaks Street"

 "PostalCode" = "76302" }

$sanantonio = @{

 "City" = "San Antonio"

 "State" = "Texas"

 "StreetAddress" = "4706 College Park"

 "PostalCode" = "78249" }

$midwestcity = @{

 "City" = "Midwest City"

 "State" = "Oklahoma"

 "StreetAddress" = "2820 Global Parkway"

 "PostalCode" = "73110" }
 
 $paris = @{

 "City" = "Paris"

 "State" = "Texas"

 "StreetAddress" = "2650 Lamar Avenue"

 "PostalCode" = "75460" }
 
 $mansfield = @{

 "City" = "Mansfield"

 "State" = "Texas"

 "StreetAddress" = "99 Regency Parkway, Suite #105"

 "PostalCode" = "76063" }
 
 
 Get-ADUser -SearchBase 'ou=office,dc=emd.local,dc=emd.local' -Filter `

	{city -eq 'Wichita Falls'} |

		Set-ADUser @wichitafalls -Country US
	
Get-ADUser -SearchBase 'ou=office,dc=emd.local,dc=emd.local' -Filter `

	{city -eq 'San Antonio'} |

		Set-ADUser @sanantonio -Country US
	
 Get-ADUser -SearchBase 'ou=office,dc=emd.local,dc=emd.local' -Filter `

	{city -eq 'Midwest City'} |

		Set-ADUser @midwestcity -Country US
	
 Get-ADUser -SearchBase 'ou=office,dc=emd.local,dc=emd.local' -Filter `

	{city -eq 'Paris'} |

		Set-ADUser @paris -Country US
	
 Get-ADUser -SearchBase 'ou=office,dc=emd.local,dc=emd.local' -Filter `

	{city -eq 'Mansfield'} |

		Set-ADUser @mansfield -Country US
	
cmd /c pause
