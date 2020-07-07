bann() {
	random
	figlet Font
	echo
	}
	ins() {
		clear
		random
		printf "\nInstalling Font \n"
		cd ~/font-install
		dpkg -i font.deb
		apt show font
		printf "\n Installed font\n"
		}
		check() {
			
			cd ~
			if [ -e font2.flf ];then
			echo
			else
			printf "\n\033[1;91m First Install font !!!\n"
			exit
			fi
			}
			
		pre () {
			check
			echo -e -n "\033[1;92m Enter Your Name :\033[0m "
			read h
			if [ ! -z $h ];then
			clear
			figlet -f font $h
			echo
			cd ~
			toilet -f font2 -F metal $h
			echo
			toilet -f font2 -F border -F metal $h
			fi
			}
	me() {
		clear
				random
				figlet About
				random
				printf "\n\n This tool created by :\033[0m https://github.com/rooted-cyber( Maruf )\n"
				random
				printf "\nThis tool uploaded :\033[0m 7 july 2020\n"
				random
				printf "\nContact me :\n\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Facebook ID : \033[1;97m https://www.facebook.com/maruf.alam.94043626\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Telegram 1st Bot : \033[1;97m https://t.me/rootedcyber_bot\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Telegram 2nd Bot : \033[1;97m https://t.me/rootedcyber2_bot\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Facebook page : \033[1;97m https://www.facebook.com/rootedcyber\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Instagram ID : \033[1;97m https://www.instagram.com/rootedcyber\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Github link : \033[1;97m https://hithub.com/rooted-cyber\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Telegram Group : \033[1;97m https://t.me/rootedcyber1\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m My blog : \033[1;97m https://rootedcyber.blogspot.com\n"
				printf "\033[1;92m [\033[1;97m*\033[1;92m]\033[1;93m Whatsapp Group : \033[1;97m https://chat.whatsapp.com/BdCWDT2g35y67yV8DNHvfa\n\n"
				}
				menu () {
					clear
					bann
					printf "\033[1;91m[\033[0m1\033[1;91m]\033[1;92m Install font for toilet and figlet\n"
					printf "\033[1;91m[\033[0m2\033[1;91m]\033[1;92m Font preview\n"
					printf "\033[1;91m[\033[0m3\033[1;91m]\033[1;92m About me\n"
					printf "\033[1;91m[\033[0m4\033[1;91m]\033[1;92m Exit\n\n\n"
					echo -e -n "\033[1;96m Font\033[0m -->> "
					read n
					case $n in
					1)ins ;;
					2)pre ;;
					3)me ;;
					4)exit ;;
					*)menu
					esac
					}
					ch() {
						cd $PREFIX/bin
						if [ -e figlet ];then
						echo
						else
						pkg install figlet
						fi
						if [ -e toilet ];then
						echo
						else
						pkg install toilet
						fi
						}
					setup () {
						cd $PREFIX/bin
						if [ -e short ];then
						menu
						else
						ch
						cd ~/font-install
						dpkg -i short.deb
						dpkg -i ran.deb
						apt show short
						apt show random
						fi
						}
						setup