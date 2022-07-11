#Ottenere il numero totale dei file contenuti nelle directory /usr/bin e /var
expr $(find /usr/bin -type f -print | wc -l) + $(find /var -type f -print | wc -l)
