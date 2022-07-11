#ottenere la somma delle occupazioni dei file delle directory /usr/bin e /var
expr $(find /usr/bin -type f -print | du -sb | cut -f1) + $(find /var -type f -print | du -sb | cut -f1)
