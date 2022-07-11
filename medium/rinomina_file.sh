#rinomina un certo numero di file da png a jpg
find . -name '*.png' | sed -e 's/.*/mv & &/' -e 's/png$/jpg/' | bash
