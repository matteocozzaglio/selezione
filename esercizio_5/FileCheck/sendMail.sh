#!/bin/sh  

########################################################################
#
# Autore: Matteo Cozzaglio
# Data: 15 Nov 2019
# Versione 1.0
# mail: matteocozzaglio@gmail.com
#
# Descrizione
#  Invio di un messaggio di posta per la modifica del file myprogram.conf
#
# Possibili miglioramenti
#  Aggiunta di parametri esterni per poter utilizzare lo script anche per altri messaggi
#
########################################################################

nomeServer=$HOSTNAME    
utente="noreply"

# Oggetto della mail
Oggetto="myprogram.conf modificato sul server $nomeServer"  
# Inserire l'indirizzo di posta a cui inviare la notifica
Destinatario="indirizzoDiPosta"   
# Testo del body della mail
Testo="Il file myprogram.conf è stato modificato"  

MAIL_TXT="Subject: $Oggetto\nFrom: $utente\nTo: $Destinatario\n\n$Testo"  
echo -e $MAIL_TXT | sendmail -t  
exit $?  