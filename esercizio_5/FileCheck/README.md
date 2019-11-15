### CONSIDERAZIONI
- Software gia' installato: incrontab
- Server gia' configurato per inviare mail a server di posta
- Indirizzo mail corretto associato all'utente root


### Riga da inserire in INCRONTAB
"sudo incrontab -e"
"/etc/myprogram.conf IN_MODIFY /percorsoScript/sendMail.sh