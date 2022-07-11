#copiare alcuni file con un certo pattern nel nome in un altro ramo mantenendo gerarchia directory

find /usr/include/ -name 's*.h' | xargs -I {} cp --parents {} test_folder
