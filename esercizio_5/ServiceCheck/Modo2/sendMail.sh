#!/bin/sh  

########################################################################
#
# Autore: Matteo Cozzaglio
# Data: 15 Nov 2019
# Versione 1.0
# mail: matteocozzaglio@gmail.com
#
# Descrizione
#  Invio di un messaggio di posta 
#
########################################################################

nomeServer=$HOSTNAME    
utente="noreply"

# Oggetto della mail
Oggetto="apache2 fermato sul server $nomeServer"  
# Inserire l'indirizzo di posta a cui inviare la notifica
Destinatario="indirizzoDiPosta"   
# Testo del body della mail
Testo="Il servizio apache si e' fermato"  

MAIL_TXT="Subject: $Oggetto\nFrom: $utente\nTo: $Destinatario\n\n$Testo"  
echo -e $MAIL_TXT | sendmail -t  
exit $?  