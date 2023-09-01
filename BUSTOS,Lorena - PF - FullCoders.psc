Algoritmo RegistroAlumnos
	Escribir " " ;
	Escribir " ########################################## "
	Escribir "---------------- Agencia de Viajes ------------------"
	Escribir "----------------- FAROBENO VIAJES -------------------"
	Escribir "##########################################"
	Escribir " ";
	Escribir "-------------------------- Menú Principal ---------------------"
	Escribir "---Elija el número de la opción que necesita--- ";
	
	Escribir "¿Cuantas clases dura su materia?"
	Leer t
	Escribir "¿Cuantos alumnos cursan su materia?"
	Leer n

	Dimension nombre[n]
	Dimension nota[n]
	Dimension asist[n]
	
	Para i <- 1	Hasta n  Hacer
		Escribir "Ingrese el nombre del alumno :" i 
		Leer nombre[i]
	Fin Para
	
	Repetir
		Escribir "------------------------------- MENÚ PRINCIPAL -------------------------"
		escribir "Que desea hacer?"
		escribir "1. Verificar asistencia"
		escribir "2. Verificar promedio"
		escribir "3. Ver cuantos alumnos cargó y sus respectvas verificaciones"
		escribir "4. Salir"
		Escribir "------------- Elija el número de la opción que necesita ----------------"
		Leer menuPrincipal
		
		// verificar asistencia
		Si menuPrincipal=1 Entonces
			Escribir "De qué alumno quiere verificar su asistencia?"
			Leer nombrealumno
			i <- 1
			Mientras nombrealumno <> nombre[i] Hacer
				i=i+1				
			Fin Mientras
			Escribir "Ingrese el total de faltas del alumno : " nombre[i]
			Leer f
			asist[i] <- (((t-f)/t)*100)
			Si asist[i] >= 80 Entonces
				Escribir "-------------------------------------------------------------------------"
				Escribir "El alumno " nombre[i] " cumple con el 80% de las asistencias a clases,con una asistencia total del " asist[i] " %."
				Escribir "-------------------------------------------------------------------------"
			SiNo
				Escribir "-------------------------------------------------------------------------"
				Escribir "El alumno " nombre[i] " NO cumple con las asistencias mínimas a clases,con una asistencia total del " asist[i] " %."
				Escribir "-------------------------------------------------------------------------"
			Fin Si
		FinSi		
		
		//verificar promedio
		Si menuPrincipal=2 Entonces
			Escribir "Ingrese el nombre del alumno del que desea calcular el promedio: ";
			Leer nombrealumno
			i <- 1
			Mientras nombrealumno <> nombre[i] Hacer
				i=i+1
			Fin Mientras
			Escribir "Ingrese la nota del primer parcial del alumno " nombre[i] "."
			Leer n1
			Escribir "Ingrese la nota del segundo parcial del alumno " nombre[i] "."
			Leer n2
			Escribir "Ingrese la nota del tercer parcial del alumno " nombre[i] "."
			Leer n3
			nota[i] = (n1+n2+n3)/3
			Si nota[i] >=8 Entonces
				Escribir "-------------------------------------------------------------------------"
				Escribir "El alumno " nombre[i] ", promocionó la materia. Con una nota final de " nota[i] "."
				Escribir "-------------------------------------------------------------------------"
			SiNo
				Si nota[i] <6 Entonces
					Escribir "-------------------------------------------------------------------------"
					Escribir "El alumno " nombre[i] ", debe recursar la materia. Con una nota final de " nota[i] "."
					Escribir "-------------------------------------------------------------------------"
				SiNo
					Escribir "-------------------------------------------------------------------------"
					Escribir "El alumno " nombre[i] ", está en condicion intermedia. Con una nota final de " nota[i] "."
					Escribir "-------------------------------------------------------------------------"
				Fin Si
			Fin Si
		Fin Si
		
		//Ver los cargados al sistema
		Si menuPrincipal=3 Entonces
			i <- 1
			Mientras asist[i] <> null o nota[i]  <> null Hacer
				Escribir "El alumno " nombre[i] ", tiene una asitencia del: " asist[i] " y un promedio de: " nota[i] "."
				Escribir ""
				i = i+ 1
			Fin Mientras
		FinSi
		
	Hasta Que menuPrincipal=4
FinAlgoritmo