:: “Sign into the domain controller holding the PDCe FSMO role”
:: Configure Time Reference for AD
w32tm.exe /config /manualpeerlist:"time-a-wwv.nist.gov time-b-wwv.nist.gov 132.163.96.1 132.163.96.2" /syncfromflags:manual /reliable:yes /update 
:: Restart Services
net stop w32time && net start w32time
