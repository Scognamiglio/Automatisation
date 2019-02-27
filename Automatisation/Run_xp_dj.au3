Local $aDays=StringSplit("{!}xpadd @Haibara Suzuran xp2520 300,{!}xpadd @Kirito Kirigawa xp2760 300,{!}xpadd @Lloyd Tokisaki xp2760 300,{!}xpadd @Zheneos Hikari xp3000 300,{!}xpadd @Henel Aemue xp3000 200,{!}xpadd @Neiko Tamatsu xp1140 200,{!}xpadd @Alexandra Viktorius xp1620 200,{!}xpadd @Miki Sangeki xp480 200,{!}xpadd @Asuna Yukki xp2400 100,{!}xpadd @Kirei Kotomine xp1680 100",",")
$i=1
$a=""
msgbox(0,"","")
sleep(3000)
while($i<UBound($aDays))
	send($aDays[$i]&@CRLF)
	sleep(2000)
	$i=$i+1

WEnd
msgbox(0,"coucou",$a)