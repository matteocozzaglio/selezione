### DESCRIZIONE

Modalità piu' "grezza" per la verifica
Creo un cronjob che gira ogni "tot" minuti per verificare lo stato del servizio. In caso sia fermo mando una mail

crontab -e

*/1 *  * * * /percorsoScript/serviceCheck.sh