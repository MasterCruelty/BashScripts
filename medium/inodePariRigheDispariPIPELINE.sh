#trovare il numero di file con inode pari e numero di righe dispari usando una pipeline su una riga
#prima cerco i file .h dentro la directory, li passo a xargs che ne fa una ls -i per ogni file e così ho gli inode per ogni file.
#passo il risultato ad awk e per ogni inode pari stampo il file, con xargs ne conto le linee.
#passo nuovamente l'ultimo risultato ad awk che per ogni file con linee dispari, lo stampa. Infine con wc -w conto quanti sono questi file.
find /usr/include -type f -name '*.h' | xargs -I {} ls -i {} | awk '($1 % 2 == 0) {print $2}'| xargs -I {} wc -l {} | awk '($1 % 2 == 1) {print $1}'| wc -w
