#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 414, 293, 259, 124)
$Input1 = GUICtrlCreateInput("nom J1", 120, 64, 65, 21)
$Input2 = GUICtrlCreateInput("attaque J1", 120, 96, 65, 21)
$Input3 = GUICtrlCreateInput("défense J1", 120, 128, 65, 21)
$Input4 = GUICtrlCreateInput("tech J1", 120, 160, 65, 21)
$Input5 = GUICtrlCreateInput("nom J2", 208, 64, 65, 21)
$Input6 = GUICtrlCreateInput("attaque J2", 208, 96, 65, 21)
$Input7 = GUICtrlCreateInput("défense J2", 208, 128, 65, 21)
$Input8 = GUICtrlCreateInput("tech J2", 208, 160, 65, 21)
$Button1 = GUICtrlCreateButton("générer", 120, 200, 153, 33)


GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

		Case $Button1
			$NJ1 = GUICtrlRead($Input1, 1)
			$AJ1 = GUICtrlRead($Input2, 1)
			MsgBox(0,$NJ1,$AJ1)
	EndSwitch
WEnd
