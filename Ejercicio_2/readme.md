Para ejecutar el script local se debe descargar la base de datos desde ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz y descomprimirla en el directorio Ejercicio_2 con el nombre swissprot.

Luego ingresar los siguientes comandos:
export BLASTPLUSDIR={DIR} donde {DIR} es el la ruta al directorio bin de BLAST+ (se debe usar la version v. 2.2.24+ o mas)
perl Ex2_local.pl