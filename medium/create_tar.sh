#creare un tar mediante find 

find /usr/include/ -name 's*.h' -exec tar -rvf file.tar {} \;
