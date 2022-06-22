:: Change Account for Service
sc.exe config "Service Name" obj= "DOMAIN\User" password= "password" type= own
:: Restart Service
net stop "Service Name"
net start "Service Name"