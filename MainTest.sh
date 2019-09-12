#!/bin/bash
echo "|\     /|(  ____ \( \      (  ____ \(  ___  )(       )(  ____ \ "
echo "| )   ( || (    \/| (      | (    \/| (   ) || () () || (    \/ "
echo "| | _ | || (__    | |      | |      | |   | || || || || (__     "
echo "| |( )| ||  __)   | |      | |      | |   | || |(_)| ||  __)    "
echo "| || || || (      | |      | |      | |   | || |   | || (       "
echo "| () () || (____/\| (____/\| (____/\| (___) || )   ( || (____/\ "
echo "(_______)(_______/(_______/(_______/(_______)|/     \|(_______/ "
echo "_________ _______ "
echo "\__   __/(  ___  )"
echo "   ) (   | (   ) |"
echo "   | |   | |   | |"
echo "   | |   | |   | |"
echo "   | |   | |   | |"
echo "   | |   | (___) |"
echo "   )_(   (_______)"
echo " _______  _______           _       _________          _______          "
echo "(  ____ \(  ____ )|\     /|| \    /\\__   __/|\     /|(  ____ )|\     /|"
echo "| (    \/| (    )|| )   ( ||  \  / /   ) (   | )   ( || (    )|| )   ( |"
echo "| (_____ | (____)|| |   | ||  (_/ /    | |   | |   | || (____)|| |   | |"
echo "(_____  )|  _____)| |   | ||   _ (     | |   | |   | ||     __)| |   | |"
echo "      ) || (      | |   | ||  ( \ \    | |   | |   | || (\ (   | |   | |"
echo "/\____) || )      | (___) ||  /  \ \   | |   | (___) || ) \ \__| (___) |"
echo "\_______)|/       (_______)|_/    \/   )_(   (_______)|/   \__/(_______)"

echo "Preciona el numero de las opciones dadas a continuacion y para salir del sistema precione 5"
options = "Set_up_Ip Start_test See_Last_Test_Results  List_Tools Exit"

StartScan()
{
	namp -Sp $i{pSelected}${NetMask} | tee LastResults.txt| less |  grep up | = IpUp
	#arp-scan -l | less| grep | 

	echo "Estas son los equipos en la red que estan activos"
	#for SCAN in$(Ipup); do
		#namp  -O $Ipup 
	#done
	#for SCAN in$(Ipup); do
		#namp  ${Ipup}${NetMask}  
	#done
	#echo "Este escaneo muestra la direccion MAC puertos abiertos y vercion del sistema operativo de cada equipo activo"  

}
ShowLastTestResultsAgain()
{
	cat LastResults.txt
}
ShowCurrentToolsInTheSystem()
{
	echo "El sistema cuenta actalmente con las herramientas: "
	echo "Nmap ,MetaSploit, Cow petty ,WifiPhi"
}



select selection in options; do
	if [ "$REPLY" = "1"]; 
		then 
			read -p "Escribe la Ip de la red a escanear y la mascara separados por un espacio (ejemplo 10.10.10.0 /24) : " ipSelected NetMask
	else if [ "$REPLY" = "2"];
		then 
			StartScan "$ipSelected" "$NetMask"

	else if [ "$REPLY" = "3"];
		then
			ShowLastTestResultsAgain

	else if [ "$REPLY" = "4"];
		then
			ShowCurrentToolsInTheSystem

	else if [ "$REPLY" = "5"];
		then
			done
	else
		echo "Seleccion invalida"
fi
done
