Para este ejercicio descargamos la secuencia de nucleótidos de un ARN mensajero correspondiente al gen HBB humano (Hemoglobin Subunit Beta), relacionado con la anemia falciforme, en formato GenBank.

El script desarrollado lee el archivo .gb y convierte la secuencia de nucleótidos en 6 cadenas de aminoácidos posibles, una para cada marco de lectura posible. Luego reconoce dentro de cada traducción el primer tramo que comience en metionina y termine en un stop. Para cada una de las cadenas obtenidas, se guarda este tramo dentro del archivo de salida. Si la traducción no contiene ningún tramo que comience en metionina	y finalice en un stop, se descarta.

Para ejecutar el script:

	perl ./Ej1.pl <input>

Input esperado: archivo GenBank.
Output: out.fas.

En este caso ejecutamos el script usando el input HBB.gb y renombramos el output a HBB.fas. Obtuvimos 5 salidas posibles de distintas longitudes. Uno de los marcos de lectura produjo una traducción sin ninguna metionina y fue descartado. Los restantes presentan las siguientes longitudes (en cantidad de aminoácidos): 39, 7, 14, 147 y 15. Sospechamos que el marco de lectura correcto es el que produce la cadena de 147 aminoácidos, porque abarca una parte del gen muchísimo mayor que los demás. Esto será confirmado o refutado en el ejercicio 2, cuando realicemos el blastp de cada una.

