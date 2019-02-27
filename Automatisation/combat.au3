$atk1=InputBox("","indiquez l'attaque du joueur 1")
$def1=InputBox("","indiquez la défense du joueur 1")
$teq1=InputBox("","indiquez la technique du joueur 1")

$atk2=InputBox("","indiquez l'attaque du joueur 2")
$def2=InputBox("","indiquez la défense du joueur 2")
$teq2=InputBox("","indiquez la technique du joueur 2")

$renvoi="Le joueur 1 tape du "&$atk1-($def2/2)&" si il touche le joueur 2"&@CRLF&"Le joueur 2 tape du "&$atk2-($def1/2)&" si il touche le joueur 1"

if $teq1>$teq2 Then
	$renvoi=$renvoi&@CRLF&"le joueur 1 a un bonus de "&5*($teq1-$teq2)&" sur les lancés de dés"&@CRLF
EndIf
if $teq1<$teq2 Then
	$renvoi=$renvoi&@CRLF&"le joueur 2 a un bonus de "&5*($teq2-$teq1)&" sur les lancés de dés"&@CRLF

EndIf

msgbox(0,"Information combat",$renvoi)

sleep(2000)
send($renvoi)