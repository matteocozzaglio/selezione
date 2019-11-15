#!/bin/bash

########################################################################
#
# Autore: Matteo Cozzaglio
# Data: 15 Nov 2019
# Versione 1.0
# mail: matteocozzaglio@gmail.com
#
# Descrizione
#  Invio di un messaggio di posta nel caso in cui il servizio sia fermo
#
########################################################################

# Inserire qui l'indirizzo di posta
Destinatario=""
utente="noreply"

# Nome del servizio da controllare
Servizio='apache2'

 `pgrep $Servizio >/dev/null 2>&1`
 STATS=$(echo $?)

 # Controllo che il servizio sia attivo
 if [[  $STATS == 1  ]]

  then
    # Invio una mail di avviso
    Testo="Il servizo $Servizio è in stato Stop. Controllare"
    Oggetto="$Servizio fermo su server $HOSTNAME"    
    MAIL_TXT="Subject: $Oggetto\nFrom: $utente\nTo: $Destinatario\n\n$Testo"
    echo -e $MAIL_TXT | sendmail -t 
 fi