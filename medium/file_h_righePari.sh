#ottenere un numero di file .h contenenti un numero di righe pari in una directory
find /usr/include/*.h -type f | xargs -I {} wc -l {} | cut -d ' ' -f1 | awk '($0 %2 == 0) {count++} END{print count}'
