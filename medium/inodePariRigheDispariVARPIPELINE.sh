#file con inode pari e righe dispari

#$1 è il primo argomento della stringa passata a awk, $2 il secondo, quando controllo $1 %2 == 0 è il numero.
#$2 è il nome del file, alla fine stampo sia $1 che $2(come se stessi stampando $0 che è l'input intero)

sudo find /var -type f | xargs -I {} sudo ls -i {} | awk '{if($1 %2 == 0) {print $2}}' | xargs -I {} sudo wc -l {} | awk '{if($1%2==1) {print $1,$2}}'
