:: Promote to DC using IFM
dcpromo.exe /unattend /ReplicationSourcePath:"C:\IFM" /replicaornewdomain:Replica /replicadomaindnsname:lucernpub.com /userdomain:LUCERNPUB /username:administrator /password:"P@$$w0rd" /sitename:RemoteLocation /installdns:yes /confirmgc:yes /databasepath:"E:\NTDS" /logpath:"E:\logs" /sysvolpath:"E:\sysvol" /safemodeadminpassword:"P@$$w0rd”
