:: To make a snapshot, type the following command in an elevated Command Prompt (cmd.exe) window:
ntdsutil.exe "activate instance ntds" "snapshot" "create" q q

:: To view all snapshots, type the following command in an elevated Command Prompt (cmd.exe) window to get a numbered list of all available snapshots:
ntdsutil.exe "activate instance ntds" "snapshot" "list all" q q

:: To mount a snapshot, type the following command in an elevated Command Prompt (cmd.exe) window, using the number of the snapshot you want to mount from the previous command:
ntdsutil.exe "activate instance ntds" "snapshot" "mount GUID" q q
::The preceding command will output the folder where the database is mounted.

:: Run the following command to expose it as an LDAP Store:
dsamain.exe -dpbath "Location from previous command" -ldapport PortNumber
