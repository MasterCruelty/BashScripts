#il processo con PPID più alto

ps -eo uname,pid,ppid,args | sort -nk3 | tail -n1
