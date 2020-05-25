Para ejecutar el script local se debe descargar la base de datos desde ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz y descomprimirla en el directorio Ejercicio_2 con el nombre swissprot.

Luego ingresar los siguientes comandos:
export BLASTPLUSDIR={DIR} donde {DIR} es el la ruta al directorio bin de BLAST+ (se debe usar la version v. 2.2.24+ o mas)
perl Ex2_local.pl

**Interpretación**

De las sequencias obtenidas en el archivo .fas podemos ver que las 6 secuencias no tienen ninguna secuencia parecida.
(Secuencia 1: 1497 Secuencia 2: 8 Secuencia 3: 6 Secuencia 4: 75 Secuencia 5: 27 Secuencia 6: 6)

Como resultado, podemos observar que la proteína más parecida (con un score de 2763)
es la proteína "NACHT, LRR and PYD domains-containing protein 1"

Por otro lado, los valores estadísticos (E values) asociados a las secuencias encontradas
son cercanos a 0, por lo que tenemos confianza de que las coincidencias no se deben al azar. 
