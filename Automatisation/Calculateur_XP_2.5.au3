#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GUIListBox.au3>
#include <WindowsConstants.au3>
#include <StringConstants.au3>
#include <Misc.au3>
#include <ComboConstants.au3>

Local $hDLL = DllOpen("user32.dll")
$final=""
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Calculateur_XP_2.6", 265, 400, 500, 250)
$List1 = GUICtrlCreateList("", 10, 10, 175, 120) ; MAJ 09/10/2018
GUICtrlSetData($List1, "Sophie Cheese|Akaan|Nanako|Ramu Sinclar|Kaz. King.|Zealot (Zeal) Lumpur|Neiko bobo :3 (Mao)|Ellana Brekker~ |PM/Kurome|Zheneos Hikari|Aiden hart|Viktor Naldric|Oswald Zephyr (Squelette)|Louis Arch'ker|Ayana Honoko|Ealys / Hisui|Famas Styles|Jason/Xavier|Tatsumi Matoï|Zell Stultem|Kirito Qwaser|Mina Hazaki|Ai Masshiro")
$Input1 = GUICtrlCreateInput("", 225, 10, 30, 20)
$Input2 = GUICtrlCreateInput("0", 225, 35, 30, 20)
$Input3 = GUICtrlCreateInput("100", 225, 60, 30, 20)
$Lieu = GUICtrlCreateCombo("", 10, 130, 245, 20, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData($Lieu, "falaise|forêt|montagne|plage|plaine|salle-entrainement-1|salle-entrainement-2")
GUICtrlCreateLabel("niv", 195, 15, 20, 30)
$Label1 =GUICtrlCreateLabel("min", 205, 40, 15, 30)
GUICtrlCreateLabel("bon", 195, 65, 20, 30)
$list2=GUICtrlCreateLabel("", 15, 165, 235, 180)
$Button1 = GUICtrlCreateButton("Ajouter une commande", 10, 360, 185, 30)
$Button2 = GUICtrlCreateButton("Envoyer", 205, 360, 50, 30)
$Button3 = GUICtrlCreateButton("Rechercher", 195, 90, 60, 30)


GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
    $nMsg = GUIGetMsg()

    Switch $nMsg
        Case $GUI_EVENT_CLOSE
            Exit

        Case $Button1
			$a = GUICtrlRead($Input2)
			$b=GUICtrlRead($Input1)
			$xp=($a/($b*10))*$b*$b*$b/4
            $xp=$xp*GUICtrlRead($Input3)/100
            $final=$final&","&"{!}xpadd @"&GUICtrlRead($List1)&" xp"&round($xp)&@CRLF
			GUICtrlSetData($list2,GUICtrlRead($list2)&@CRLF&"{!}xpadd @"&GUICtrlRead($List1)&" xp"&round($xp))
            $test=true


        case $Button2
			while $test
				If _IsPressed("A1", $hDLL) Then
					GUISetState(@SW_MINIMIZE)
                    sleep(100)
					$i =0
					$split = StringSplit ($final , ",")
					For $i = 1 To $split [0]
						send ( $split [$i])
						Sleep (300)
					Next
						$test=false
					GUISetState(@SW_RESTORE)
					Sleep (3000)
					GuiCtrlSetData($list2, "")
					$final=""
				EndIf
            WEnd

		case $Button3
			GUISetState(@SW_MINIMIZE)
			$x = 1500
			$valid = ("{DOWN}"&"{ENTER}")
			Send ("^f"&"^a"&"{DEL}"&"de:"&GUICtrlRead($List1)&" ")
			Sleep ($x)
			send ($valid)
			Sleep ($x)
			Send ("dans: "&GUICtrlRead($Lieu)&" ")
			Sleep ($x)
			send ("{ENTER}")
			Sleep ($x)
			GUISetState(@SW_RESTORE)
    EndSwitch
WEnd

