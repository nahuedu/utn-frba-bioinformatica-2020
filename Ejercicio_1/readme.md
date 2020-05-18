Para el presente trabajo práctico se elegió la enfermedad "vitiligo", en la cual la piel pierde sus células pigmentarias, pudiendo producir la aparición de áreas descoloridad en distintas partes del cuerpo. 

Para el ejercicio 1 se buscó esta enfermedad en la página de la OMIM (https://omim.org/) y se observó que un gen asociado a la enfermedad es el NLRP1.

Se descargó entonces, desde la página del NCBI, la secuencia de nucleótidos de un ARN mensajero correspondiente al gen NLRP1 humano (NLR family pyrin domain containing 1), relacionado con el vitiligo, en formato GenBank.

El script en perl desarrollado lee el archivo .gb y convierte la secuencia de nucleótidos en 6 cadenas de aminoácidos posibles, una para cada marco de lectura posible (3 correspondientes a la dirección original de la secuencia y las otras 3 correspondientes a la dirección del reverso complementario). 
Luego, se reconoce dentro de cada traducción (o marco) el primer tramo que comience en metionina y termine en un stop. Para cada una de las cadenas obtenidas, se guarda este tramo dentro del archivo de salida. Los tramos que no comienzan en metionina y finalizan en un stop se descartan.

Comando para ejecutar el script:

	perl ./Ej1.pl <input>		(input = nlrp1.gb)	

Input esperado: archivo GenBank.
Output: out.fas

Se ejecutó el script usando el input nlrp1.gb y se le cambió el nombre al archivo de salida por nlrp1.fas (para que sea más descriptivo)

Se obtuvieron las 6 salidas correspondientes a cada marco de lectura posible. A continuación se lista la cantidad de aminoácidos de cada marco:
Secuencia 1: 1497
Secuencia 2: 8
Secuencia 3: 6
Secuencia 4: 75
Secuencia 5: 27
Secuencia 6: 6


Se podría presumir que el ORF correcto es el correspondiente a la secuencia 1, por tener la cadena de aminoácidos más grande (abarcando una parte del gen mucho mayor que el resto de las secuencias). Podremos afirmar o descartar esta teoría en los siguientes ejercicios.
