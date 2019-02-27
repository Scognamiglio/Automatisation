$chap=InputBox("nom","nom chapitre")
$fin=""
$truc=true

while ($truc)
	$deb=InputBox("nom","html")
	if $deb="x" then
		$truc=false
	else
		$fin=$fin&'<a href="http://souverain-des-ames.forumactif.com/t'&$deb&'-chapitre-1"> Chapitre '&$chap&'</a>'&@CRLF

	EndIf
	$chap=$chap+1
WEnd
$file = FileOpen(@ScriptDir &"\Sommaire.txt", 2)
FileWrite($file, $fin)
FileClose($file)