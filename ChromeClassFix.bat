Option Explicit
Const HKU = &H80000003
Dim strValue, oReg, Value, subValue, wmi, wshshell, strFullPath
Dim Key1, key2, key3
Dim strValueName1
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\default:StdRegProv")
Set wmi = GetObject("winmgmts:\\.\root\cimv2")
Set WshShell = WScript.CreateObject("WScript.Shell")
Set subValue = wmi.ExecQuery("Select SID from Win32_UserProfile where SID like 'S-1-5-21%'")
strValueName1 = "DelegateExecute"
Key1 = "\Software\Classes\Chrome\.exe\shell\open\command"
Key2 = "\Software\Classes\Chrome\.exe\shell\opennewwindow\command\"
Key3 = "\Software\Classes\ChromeHTML\shell\open\command\"
ParseReg key1,strValueName1
ParseReg key2,strValueName1
ParseReg key3,strValueName1
Sub ParseReg(key,strValueName)
For Each Value In subValue
oReg.GetStringValue HKU,Value.SID & key,strValueName,strValue
If strValue <> "" Then
Wscript.Echo HKU & Value.SID & key & strValueName 
  oreg.deletevalue HKU, Value.SID & key,strValueName
End If
Next
End Sub