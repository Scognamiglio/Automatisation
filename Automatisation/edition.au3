#include <String.au3>
$deb=InputBox("nom","nom chapitre")
$deb=$deb&"/mobilebasic"
$b=0

$ret=BinaryToString(InetRead($deb,4))Le joueur 1 tape du 0 si il tou
dim $verif=[false,false,false]
dim $er=["â€™","Ã§","Ã©","Ã¨","Å“u","Ã ","Ãª","Ã¢","Å“","Ã®","Ã¹","Ã¯","&gt;","Ã»","Ã´","â€¦","Â ?","&#39;"]
dim $rep=["'","ç","é","è","œu","à","ê","â","œ","î","û","ï","...","û","ô","..."," ?","'"]

$ret=StringSplit($ret,");</script>",1)[2]
$ret=StringSplit($ret,"</span></p></div>",1)[1]
for $i=0 to 17 Step 1
$ret=StringReplace($ret,$er[$i],$rep[$i])
Next

$tab=StringSplit($ret,"<span",1)
$i=0
$fin=""
while $i<$tab[0]
	$verif[0]=false
	$verif[1]=false
	$val=$tab[$i+1]

	if $verif[2]=true then
		$fin=$fin&@CRLF
	EndIf

	$verif[2]=false

	if StringInStr($val,"italic") <> 0 Then
		$verif[0]=true
	EndIf

	if StringInStr($val,"font-weight:700") <> 0 Then
		$verif[1]=true
	EndIf
	if StringInStr($val,"<p") <> 0 Then
		$verif[2]=true
	EndIf

	$val=StringSplit($val,">",1)[2]
	$val=StringSplit($val,"<",1)[1]
	if $val = "" Then

	Else

	if $verif[0]=true then
		$val="<i>"&$val&"</i>"
	EndIf

	if $verif[1]=true then
		$val="<b>"&$val&"</b>"
	EndIf
	$fin=$fin&$val
	EndIf

$i=$i+1
wend

$file = FileOpen(@ScriptDir &"\Edition.txt", 2)
FileWrite($file, $fin)
FileClose($file)