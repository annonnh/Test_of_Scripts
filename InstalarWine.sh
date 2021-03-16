#!/bin/bash
echo "Bem-vindo a instalação do Wine, por gentileza escreva o nome da distro que será instalado o programa.(Ubuntu, Debian ou Fedora. DIGITE APENAS COM LETRA MINÚSCULAS SEM ESPAÇO ENTRE AS PALAVRAS)"
read distro
if [ "$distro" == "ubuntu" ];
then
	sudo dpkg --add-architecture i386  && wget -nc https://dl.winehq.org/wine-builds/winehq.key && sudo apt-key add winehq.key
	echo "Qual versão do $distro você usa? Ex: ubuntu2010 (SEM ESPAÇOS E PONTOS)"
	read version
	if [ "$version" == "ubuntu2010" ];
	then
		sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ groovy main'

	elif [ "$version" == "ubuntu2004" ]
	then
		sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' 
	elif [ "$version" == "linuxmint20x" ]
	then
		sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main' 
	elif [ "$version" == "ubuntu1804" ]
	then
		sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' 
	elif [ "$version" == "linuxmint19x" ]
	then
		 	sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
	sudo apt install updates
	else 
		echo "DIGITE APENAS COM LETRA MINÚSCULA SEM ESPAÇO.[ERROR]"
		exit 

	fi
	echo "Qual versão do wine deseja? Stable branch, Development branch ou Staging branch (DIGITE TUDO EM LETRA MINÚSCULA SEM ESPAÇO ENTRE AS PALAVRAS.)"
	read wineversion
	if [ "$wineversion" == "stablebranch" ];
	then
		 	sudo apt install --install-recommends winehq-stable
	elif [ "$wineversion" == "developmentbranch" ]
	then
		 	sudo apt install --install-recommends winehq-devel
	elif [ "$wineversion" == "stagingbranch" ]
	then
		sudo apt install --install-recommends winehq-staging
	else
		echo "DIGITE APENAS COM LETRA MINÚSCULA SEM ESPAÇO"
	fi
elif [ "$distro" == "debian" ]
then
	sudo dpkg --add-architecture i386 && wget -nc https://dl.winehq.org/wine-builds/winehq.key && sudo apt-key add winehq.key
	echo  "Qual versão do Debian você usa? Debian 10 (Buster) ou Debian Testing (currently Bullseye) (DIGITE TUDO EM LETRA MINÚSCULA SEM ESPAÇOS E SEM '()')"
	read versiondebian
	if [ "$versiondebian" == "debian10buster" ];
	then
		deb https://dl.winehq.org/wine-builds/debian/ buster main
	elif [ "$versiondebian" == "debiantesting" ]
	then
		deb https://dl.winehq.org/wine-builds/debian/ bullseye main  
	fi
	echo "Qual versão do wine deseja? Stable branch, Development branch ou Staging Branch (DIGITE TUDO EM LETRA MINÚSCULA SEM ESPAÇOS)"
        read wineversion
        if [ "$wineversion" == "stablebranch" ];
        then 
                        sudo apt install --install-recommends winehq-stable
        elif [ "$wineversion" == "developmentbranch" ]
        then 
                        sudo apt install --install-recommends winehq-devel
        elif [ "$wineversion" == "stagingbranch" ]
        then
                sudo apt install --install-recommends winehq-staging
        else
                echo "DIGITE APENAS COM LETRA MINÚSCULA SEM ESPAÇO"
        fi
elif [ "$distro" == "fedora" ]
then
	
	dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/33/winehq.repo && dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/32/winehq.repo
	echo "Qual versão do wine deseja? Stable branch, Development branch ou Staging Branch (DIGITE TUDO EM LETRA MINÚSCULA SEM ESPAÇOS)"
	read wineversion
	if [ "$wineversion" == "stablebranch" ]
	then
		dnf install winehq-stable
	elif [ "$wineversion" == "developmentbranch" ]
	then
		dnf install winehq-devel
	elif [ "$wineversion" == "stagingbranch" ]
	then
		dnf install winehq-staging
	fi
else
	echo "DIGITE TUDO EM LETRA MINÚSCULA SEM ESPAÇOS"
fi


