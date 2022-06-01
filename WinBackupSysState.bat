:: To create an instant System State Backup to a hard disk attached as F:\, use the following command on an elevated Command Prompt (cmd.exe):
wbadmin start systemstatebackup --backuptarget:F:

:: Use the following command to get the backups on the hard disk connected as F:\ and restore authoritatively:
wbadmin get versions
wbadmin start systemstaterecovery --version:04/26/2019-21:00 --AuthSysvol
