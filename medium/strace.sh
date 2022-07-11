#listare tutte le chiamate di sistema che hanno a che fare con la memoria durante l'esecuzione di "df -h". Ordinarle per frequenza ed estrarre la chiamata più frequente
strace -e trace=%memory 2>&1 df -h 1>/dev/null | egrep -o '^[[:alpha:]]*' | sort | uniq -c | sort -nk1r
