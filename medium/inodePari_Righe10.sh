#trovare tutti i file .h presenti in un certo ramo del file system il cui inode è pari e il numero di righe è maggiore di 10

for h in $(find /usr/include -type f -name '*.h'); do
	inode=$(ls -i $h | cut -d ' ' -f1);
	ln=$(wc -l $h | cut -d ' ' -f1);
	if [ "$(expr $inode % 2)" -eq "0" ] && [ $ln -gt "10" ]; then
		echo "$h inode: $inode  con numero righe: $ln"; 
		printf "\n";
	fi;
done;
