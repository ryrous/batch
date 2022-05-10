:: Disable inheritance on root share ::
icacls.exe C:\Shares\Users /inheritance:d
:: Remove Users access ::
icacls.exe C:\Shares\Users /remove:g Users
:: Grant Everyone special permissions ::
icacls.exe C:\Shares\Users /grant Everyone:(x,ra,ad)