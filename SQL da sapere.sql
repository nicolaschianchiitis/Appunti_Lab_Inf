# Seleziona tutti gli artisti
SELECT * FROM artisti;

# Seleziona tutti i valori di un attributo, senza duplicati
SELECT DISTINCT QQ_Tecnica from quadri;

# Seleziona tutti i valori di un attributo, senza duplicati, in ordine crescente (ci sarebbe scritto ASC, che è di default)
SELECT DISTINCT QQ_Tecnica from quadri order by QQ_Tecnica;

# Seleziona tutti i valori di un attributo, senza duplicati, in ordine decrescente
SELECT DISTINCT QQ_Tecnica from quadri order by QQ_Tecnica DESC;

# Seleziona tutti i valori di un attributo, con duplicati
SELECT QQ_Tecnica from quadri;

# Seleziona tutte le righe (record) con calcolo area > 500
# La ',' dopo un '*' serve per aggiungere una colonna.
# Calcoliamo il campo 'area' e gli diamo l'omonimo soprannome.
# Attenzione che se voglio mettere il nuovo campo dentro al WHERE devo rimettere l'operazione...
SELECT *, QQ_Altezza * QQ_Larghezza AS area FROM quadri WHERE QQ_Altezza * QQ_Larghezza > 500 ORDER BY area;

# Seleziona tutte le righe (record) con solo i campi 'titolo' ed 'annoEsecuzione'
SELECT QQ_TitoloQuadro, QQ_AnnoEsecuzione FROM quadri;

# Elenca tutti gli artisti che contengono 'Francesco' nel nome.
SELECT * FROM artisti WHERE artisti.AR_Nome LIKE '%Francesco%';

# Seleziona tutti gli artisti nati dopo il 1500 (in questo caso la data di nascita è un intero)
SELECT * FROM artisti WHERE AR_DataNascita >= 1500;

# Seleziona tutti gli artisti viventi nell'anno 1500 (in questo caso le date sono numeri interi)
SELECT * FROM artisti WHERE AR_DataNascita <= 1500 AND AR_DataMorte >= 1501;
# ------------------------ Versione migliore -------------------------------
SELECT * FROM artisti WHERE 1500 BETWEEN AR_DataNascita AND AR_DataMorte;

# Conta quanti musei ha Parigi
SELECT COUNT(*) FROM musei WHERE MM_Citta = 'Parigi';
# ------------------------ Versione alternativa -----------------------------
SELECT COUNT(MM_Citta) FROM musei WHERE MM_Citta = 'Parigi';