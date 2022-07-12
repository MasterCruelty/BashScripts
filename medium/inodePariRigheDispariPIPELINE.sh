#trovare il numero di file con inode pari e numero di righe dispari usando una pipeline su una riga

find /usr/include -type f -name '*.h' | xargs -I {} ls -i {} | awk '(-bash % 2 == 0)' | cut -d ' ' -f2 | xargs -I {} wc -l {} | awk '(-bash % 2 == 1)' | cut -d ' ' -f2 | wc -w
