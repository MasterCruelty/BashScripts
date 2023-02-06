gid=$(id -g <nome_utente>)
group=$(getent group $gid | awk -F: '{print $1}')
echo "Il gruppo a cui appartiene l'utente <nome_utente> è $group con GID $gid"

