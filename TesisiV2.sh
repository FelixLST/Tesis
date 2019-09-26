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

echo "Preciona el numero de las opciones dadas a continuacion y para salir del sistema precione "

echo "1.-Ping Sweep"
echo "2.-Escaneo de puertos"
echo "3.-Ataque de contraseñas a red inlalabrica por lista"
echo "4.-Ataque de contraseñas a servico por wordlist de fuerza bruta"
echo "5.-Realisar ataque por payload"
echo "6.-Salir del programa"

read opcion;

if (($opcion = 6))
	then 
			exit
fi
case $opcion in 
	1) echo "Escriba la primera ip  de la red y la ultima separada por un guion, ejemplo 10.15.46.1-255"
		sudo nmap -Sp $REPLY
		;;
	2)echo "Escriba la ip de el equipo que desea escanear o escriba una Id de red si desea escanear una red en especifico o un rango en especifico"	 
		sudo nmap --open -top-ports 10 $REPLY
		;;
	3)echo "Primero seleccione la red que desea atacar de la lista dada y escriba el nombre y espere";;
	4)echo "Escriba la ip de el equipo que desea atacar"
		hydra -l admin WORDLIST -R  tp>//{$REPLY}
		hydra -R
	5) echo"Se abira la consola visual de MetaSploit, sugerencia: Usar solo cuando ya se tiene una ip,contraseña y servicio encontrados y listos para explotar"
		msfconsole
		;;

	
