#listare tutte le chiamate di sistema che hanno a che fare con la memoria durante l'esecuzione di "df -h". Ordinarle per frequenza ed estrarre la chiamata più frequente
strace -e trace=%memory 2>&1 df -h | cut -d "(" -f1 | sort | uniq -c | sort -nr | awk  '{print $1 " " $ 2}' | head -n1
