:: Issue the following command on an elevated Command Prompt (cmd.exe) on the domain controller for which you want to disable inbound replication:
repadmin.exe /options DC01 +DISABLE_INBOUND_REPL
:: Issue the following command on an elevated Command Prompt (cmd.exe) on the domain controller for which you want to disable outbound replication:
repadmin.exe /options DC01 +DISABLE_OUTBOUND_REPL
:: Issue the following command on an elevated Command Prompt (cmd.exe) on the domain controller for which you want to re-enable inbound replication:
repadmin.exe /options DC01 -DISABLE_INBOUND_REPL
:: Issue the following command on an elevated Command Prompt (cmd.exe) on the domain controller for which you want to re-enable outbound replication:
repadmin.exe /options DC01 -DISABLE_OUTBOUND_REPL
