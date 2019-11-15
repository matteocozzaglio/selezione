### DESCRIZIONE

Editare il servizio
systemctl edit apache2.service

ed aggiungere le seguenti righe

[Service]
ExecStopPost=/percorsoScript/sendMail.sh
ExitStopPost=/percorsoScript/sendMail.sh

Da verficare quale delle due righe fa più al nostro caso