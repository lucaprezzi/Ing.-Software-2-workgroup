1.0.0  Skeleton App:
	 Sistema base
1.1.0    Inserimento prima funzione di fatturazione parziale
1.2.0    Inserimento fattura in html visualizzabile e sistemazione funzione di fatturazione
1.2.1    Inserimento importo fatturato e da fatturare nella grafica del cliente
1.3.0  Auto-Invoicing Update:
	 Implementazione fatturazione automatica performance del mese precedente
1.4.0  Graphic First Changes:
	 Aggiunta grafica di base, supporto google fonts
1.4.1    Implementate funzioni per contare: clienti, fatture emesse, performance non fatturate
1.4.2    Rimossi link nella nav-bar della home
1.4.3    Modifiche hover (colore + underline). Aggiunta statistiche home + script fontawesome
1.5.0  User-Friendly Update:
	 Rimozione classi inutili. Ora i pulsanti si adattano alla grandezza del testo.
    	 Aggiunta effetto per evidenziare linea in hover. Miglioramenti vari in termini di efficienza.
    	 Sostituito “destroy” con “delete”
1.5.1    Rimozione hover blu sul titolo
1.5.2    Sistemati i pulsanti nei vari form
1.6.0  PDF Update:
	 Rimozione tasto show da rates
	 In invoice new ora mostra solo l’elenco dei clienti effettivamente fatturabili
	 Aggiunta scritta di avvertimento nella pagina rates riguardo all’eliminazione di tariffe
	 Reintrodotta la rimozione dei link nella barra alta nella homepage
	 Implementazione gestione pdf
1.7.0  Graphic Major Changes:
	 Aggiunta classe per error_message
    	 risolti tutti i problemi con i date_picker e i pickers 
	 centrate e migliorate schermate show 
	 risolti bugfix grafici secondari
1.7.0.1  In app->view->clients->index.html.erb-> modificato: “Partita IVA” , allineamento testo di invoiced e da       
	 fatturare. 
	 In invoices scambiate colonne client e number, e accentramento colonna number, nonché amount. L'allineamento vale anche per hourly rate in rates.
1.7.1    Riaggiunta link navbar
1.7.2    Risolto bug mancata distruzione clienti
    	 Corretto errore nello show di performances
    	 Aggiunta nel menù a tendina cliente delle nuove performance l’opzione di default “-”
    	 Riordinato campo data in new performance
    	 hourly rate può ora essere solo positivo e unico
    	 uniti campi cf e pi in index di client con attributo nowrap
    	 aggiunto simbolo € negli importi di client show
    	 aggiunti simboli h e € in index e show di performance
    	 ora non si possono modificare prestazioni già fatturate
    	 tasse impostate al  22%
    	 sistemato titolo dei pdf delle fatture
    	 risolto bug in eliminazione tariffe
    	 ribadito avvertimento in fase di eliminazione tariffe
    	 sistemato formato data in performance index
1.7.3    Cambiato temporaneamente colore navbar + colore links
    	 risolto bug colore nero su hover “fatturazione web”, ora “invoicing app”
    	 inseriti widget nella home. Minor bugfix alla grafica
    	 aggiunta favicon
1.8.0  New Graphic Update
	 Aggiunta materialize, rinnovati i form e altre modifiche sostanziose alla grafica
1.9.0  Settings Update 
	 Aggiunto vincolo al Cap, deve ora essere un numero
    	 Modificato “base-title” da “Fatturazione web” ad “Invoicing App”
    	 Creata Static Page “impostazioni”
    	 Aggiunto link a “impostazioni” in nav-bar
    	 Create funzioni di memorizzazione e recupero dati
    	 Le fatture recuperano ora i dati salvati dell’azienda “fatturatrice”
    	 Dalla pagina impostazioni ora è possibile modificare le impostazioni
    	 Ora la barra setting nella home linka alle impostazioni
    	 Risolto bug che in creazione o modifica di performance in caso di errore riselezionava il primo cliente
    	 Risolto problema due cifre decimali nelle cifre economiche
1.9.1    Aggiunto il link edit settings e separazione edit e show settings
1.9.2    Sistemato form settings, ora non c’è più la scritta “do not write %” perchè è stato aggiunto il  % di 
	 percentuale a lato. Aggiunto tasto Save nel form delle impostazioni.  Fixati vari link. Fix form rates
1.9.3    Non ricordo più che modifiche ho fatto.
1.9.4    Bugfix vari
1.9.5    Uniformato inglese/italiano, unito alcune righe dello show clients. Sistemati error box.
	 Centrati i notice “New xxx created”.
1.9.6    Rimossa colonna file dalla tabella invoice
    	 cambiato colore navbar
	 Duration ora non può essere negativo
	 Sistemata grafica new ed edit performance
    	 La lista delle performance viene ora mostrata in ordine cronologico inverso (prima le recenti)
    	 Cliente ora resta selezionato in caso di errori nell’inserimento di valori in edit e new performance
    	 Ora è possibile scegliere di vedere solo le performance ancora da fatturare invece di tutte
    	 Ricolorata in grigio la nav-bar
