
---Presentazione sistema---

Decisione di optare per l'uso di 4 tabelle:
 - clients
 - performances
 - rates
 - invoices

-----------------------------------------------

Implementazione di funzioni aggiuntive quali:
 - fatturazione automatica al primo del mese
 - possibilità di modificare i propri dati e inserire la tassazione corretta, elementi che verranno ripresi nella creazione della fattura
 - possibilità di visualizzare solamente le performance non fatturate

-----------------------------------------------

Intrododuzione di alcuni vincoli di sicurezza:
 - non posso modificare performance già fatturate
 - non posso modificare fatture già emesse
 - posso emettere fatture solo a clienti che hanno performance fatturabili (ovvero non già fatturate)
 - non posso emettere fatture retroattive (data di fatturazione viene presa in automatico dalla data odierna)

-----------------------------------------------

Cosa è andato bene:
 - divisione compiti back-end e front-end e sviluppo parallelo di essi
 - team working

Cosa non è andato bene (problematiche):
 - identificazione di funzione ed utilizzo dei file rails
 - implementazione pratica delle nozioni teoriche apprese in aula
 - stime inziali dei tempi

Cosa si rifarebbe diversamente:
 - guardare e studiare javascript per implementazione di funzioni aggiuntive
 - miglioramento gestione dei tempi
