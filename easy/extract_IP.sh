#estrarre tutti gli indirizzi IP nei file presenti in un certo ramo del filesystem (ad esempio in /etc)
find /etc -type f | xargs grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d ':' -f2
