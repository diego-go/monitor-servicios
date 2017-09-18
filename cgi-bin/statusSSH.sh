systemctl status sshd|grep running 2>/dev/null >/dev/null

if [ $? -eq 0 ] 
then
	echo "<h3 style='color:rgb(0,255,0)'>SSH is running OK!</h3>" > statusSSH.txt
else
        #echo "mailx -s "SSH service Down `date +%G_%B_%e-%H:%m_%Z`" sacknetd@gmail.com"
        echo "Warning, SSH IS DOWN!" > statusSSH.txt
fi
