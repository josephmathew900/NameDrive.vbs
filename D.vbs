' NameDrive.vbs
' VBScript to map a network drive.
' Author Joseph Mathew
' Drive D mapped to C\Projects 
' ----------------------------------------'
'
Option Explicit
Dim objNetwork, strDrive, objShell, objUNC
Dim strRemotePath, strDriveLetter, strNewName
'
strDriveLetter = "D:"
strRemotePath = "\\localhost\C$\Projects"
strNewName = "Development"

' Section to map the network drive
Set objNetwork = CreateObject("WScript.Network")
objNetwork.MapNetworkDrive strDriveLetter, strRemotePath

' Section which actually (re)names the Mapped Drive
Set objShell = CreateObject("Shell.Application")
objShell.NameSpace(strDriveLetter).Self.Name = strNewName

WScript.Quit
