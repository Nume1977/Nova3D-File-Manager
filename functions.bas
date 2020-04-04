B4J=true
Group=Default Group
ModulesStructureVersion=1
Type=StaticCode
Version=8.1
@EndOfDesignText@
'Static code module
Sub Process_Globals
	Private fx As JFX
	Dim SettingsMap As Map
End Sub


Sub CenterForm(f As Form)
	Dim ps As Screen = fx.PrimaryScreen
	f.WindowLeft = (ps.MaxX - ps.MinX) / 2 - f.Width / 2
	f.WindowTop = (ps.MaxY - ps.MinY) / 2 - f.Height / 2
End Sub


Sub LoadSettings( Dir As String, FileName As String)
	If Dir="" Or FileName="" Then
		LogError( "Empty Dir or FileName")
		Return
	End If
	Dim raf As RandomAccessFile
	raf.Initialize( Dir, FileName, False)
	'SettingsMap = raf.ReadEncryptedObject( mypassword, raf.CurrentPosition)
	SettingsMap = raf.ReadObject(raf.CurrentPosition)
	raf.Close
End Sub

Sub SaveSettings( Dir As String, FileName As String)
	If Dir="" Or FileName="" Then
		LogError( "Empty Dir or FileName")
		Return
	End If
	Dim raf As RandomAccessFile
	raf.Initialize( Dir, FileName, False)
	raf.WriteObject(SettingsMap,False,raf.CurrentPosition)
	'raf.WriteEncryptedObject( SettingsMap, mypassword, raf.CurrentPosition)
	raf.Close
End Sub

Sub WrapLabel(lbl As Label, Alignment As String) As Pane
	Dim pn1 As AnchorPane
	pn1.Initialize("")
	pn1.AddNode(lbl, 0, 0, -1, -1)
	pn1.FillHorizontally(lbl, 0, 0)
	Dim jo1 = lbl As JavaObject
	jo1.RunMethod("setAlignment", Array As Object(Alignment))
	Return pn1
End Sub

Sub DisableAllTabsExceptOf(TabPane As TabPane, page As TabPage)
	For Each tp As TabPage In TabPane.Tabs
		Dim jo As JavaObject = tp
		jo.RunMethod("setDisable", Array(tp <> page))
	Next
End Sub


Sub EnableAllTabs(TabPane As TabPane, page As TabPage)
	For Each tp As TabPage In TabPane.Tabs
		Dim jo As JavaObject = tp
		jo.RunMethod("setDisable", Array(False))
	Next
End Sub
