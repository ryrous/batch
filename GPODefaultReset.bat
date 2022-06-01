::Use the following command to restore the default domain policy to its default settings on an elevated Command Prompt (cmd.exe):
dcgpofix.exe /target:Domain

:: Use the following command to restore the default domain controller policy to its default settings on an elevated Command Prompt (cmd.exe):
dcgpofix.exe /target:DC

:: Use the following command to restore both the Default Domain Policy and the Default Domain Controller Policy to its default settings on an elevated Command Prompt (cmd.exe):
dcgpofix.exe /target:Both
