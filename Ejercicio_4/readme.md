Se utilizo el archivo blast del ejercicio 2 como input de este ejericio.

El script se encarga de detectar, de dichos resultados, aquellos hits en cuya descripción se encuentre el patrón que sea indicado como parámetro.

Además, en base al accession code de estos hits (que coincidieron con el pattern), se encarga de obtener sus secuencias completas y crear un archivo en formato FASTA para cada uno de ellos.

Parametros:
    --f: Archivo blast utilizado como input. (Default: 'sequence.blast').
    --p: Pattern a detectar
    --cs: Indica si la búsqueda será case-sensitive, es decir, teniendo en cuenta mayúsculas y minúsculas. (Default: false).

Input:
    Archivo en formato Blast.

Output:
    Archivos en formato Fasta.