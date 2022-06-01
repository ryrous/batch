:: “Sign into the domain controller holding the PDCe FSMO role”
:: Configure Time Reference for AD
w32tm.exe /config /manualpeerlist:"time.nist.gov" /syncfromflags:manual /reliable:yes /update 
:: Restart Services
net stop w32time && net start w32time
