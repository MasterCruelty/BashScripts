#ottenere il numero totale di righe di sorgenti python in una data directory
#Scelta la directory del progetto https://www.github.com/MasterCruelty/robbot
find ~/Documenti/programming/python/robbot -name '*.py' | xargs -I {} wc -l {}  | cut -d ' ' -f1 | awk '($0 > 0) {count+=$0} END {print count}'
