:: Find the objectGUID attribute of the domain controller. Use the following command on an elevated Command Prompt:
dsquery.exe * "CN=DC01,OU=Domain Controllers,DC=LucernPub,DC=com" -scope base -attr objectguid
:: Scan for and show lingering objects:
repadmin.exe /removelingeringobjects <FQDN of Domain Controller with suspected lingering objects> <objectGUID of Domain Controller with correct data> <Distinguished Name of partition containing lingering objects> /advisory_mode 
:: Remove lingering objects:
repadmin.exe /removelingeringobjects <FQDN of Domain Controller with suspected lingering objects> <objectGUID of Domain Controller with correct data> <Distinguished Name of partition containing lingering objects> 
