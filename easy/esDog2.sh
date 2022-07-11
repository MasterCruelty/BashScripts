#controllare se esistono dei file in un certo percorso
for i in {dog,cat,fish}; do
	if [ -f /bin/$i ]; then 
		echo "$i Trovato"; 
	else    echo "$i Non Trovato";
	fi;
done;
