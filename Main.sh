#!/bin/bash
echo "|\     /|(  ____ \( \      (  ____ \(  ___  )(       )(  ____ \  \__   __/(  ___  )  (  ____ \(  ____ )(  ____ \| \    /\\__   __/|\     /|(  ____ )|\     /|"
echo "| )   ( || (    \/| (      | (    \/| (   ) || () () || (    \/     ) (   | (   ) |  | (    \/| (    )|| (    \/|  \  / /   ) (   | )   ( || (    )|| )   ( |"
echo "| | _ | || (__    | |      | |      | |   | || || || || (__         | |   | |   | |  | (_____ | (____)|| (__    |  (_/ /    | |   | |   | || (____)|| |   | |"
echo "| |( )| ||  __)   | |      | |      | |   | || |(_)| ||  __)        | |   | |   | |  (_____  )|  _____)|  __)   |   _ (     | |   | |   | ||     __)| |   | |"
echo "| || || || (      | |      | |      | |   | || |   | || (           | |   | |   | |        ) || (      | (      |  ( \ \    | |   | |   | || (\ (   | |   | |"
echo "| () () || (____/\| (____/\| (____/\| (___) || )   ( || (____/\     | |   | (___) |  /\____) || )      | (____/\|  /  \ \   | |   | (___) || ) \ \__| (___) |"
echo "(_______)(_______/(_______/(_______/(_______)|/     \|(_______/     )_(   (_______)  \_______)|/       (_______/|_/    \/   )_(   (_______)|/   \__/(_______)"

echo "Preciona el numero de las opciones dadas a continuacion y para salir del sistema precione 5"
options="Set_up_Ip Start_test See_Last_Test_Results  List_Tools Exit"

StartScan()
{
	namp -Sp $i{pSelected}${NetMask} | tee LastResults.txt| less |  grep up | = IpUp
	arp-scan -l | less| grep | 

	echo "Estas son los equipos en la red que estan activos"
	for SCAN in$(Ipup); do
		namp  -O $Ipup 
	done
	for SCAN in$(Ipup); do
		namp  ${Ipup}${NetMask}  
	done
	echo "Este escaneo muestra la direccion MAC puertos abiertos y vercion del sistema operativo de cada equipo activo"  

}
ShowLastTestResultsAgain()
{
	cat LastResults.txt
}
ShowCurrentToolsInTheSystem()
{
	echo "El sistema cuenta actalmente con las herramientas: "
	echo "Nmap MetaSploit Cow petty WifiPhi"
}



select selection in options; do
	if [ "$REPLY" = "1"]; 
		then 
			read -p "Escribe la Ip de la red a escanear y la mascara separados por un espacio (ejemplo 10.10.10.0 /24) : " ipSelected NetMask
	else if [ "$REPLY" = "2"];
		then 
			StartScan

	else if [ "$REPLY" = "3"];
		then
			ShowLastTestResultsAgain

	else if [ "$REPLY" = "4"];
		then
			ShowCurrentToolsInTheSystem

	else if [ "$REPLY" = "5"];
		then
			LOOPCHECK=0
	else
		echo "Seleccion invalida"
fi
