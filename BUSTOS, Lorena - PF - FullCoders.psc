Algoritmo PlataformaProfesional
	Escribir ' '
	Escribir '------------------------------- DATOS BASE -------------------------'
	Escribir '¿Cuantas clases dura su materia?'
	Leer t
	Escribir '¿Cuantos alumnos cursan su materia?'
	Leer n
	Escribir '--------------------------------------------------------------------'
	Escribir ' '
	Dimensionar nombre(n)
	Dimensionar nota(n)
	Dimensionar asist(n)
	Escribir ' '
	Escribir '---------------------- DATOS DE PROMOCION -------------------------'
	Escribir '¿Cual es la asistencia mínima para promocionar la materia?'
	Leer asistmin
	Escribir '¿Cuantos parciales va a tomar a lo largo de la cursada?'
	Leer numparc
	Escribir '¿Con qué promedio el alumno promociona la materia?'
	Leer calprom
	Escribir '--------------------------------------------------------------------'
	Escribir ' '
	Escribir ' '
	Escribir '-------------------- DATOS DE LOS ', n, ' ALUMNOS---------------------'
	Para i<-1 Hasta n Hacer
		Escribir 'Ingrese el nombre del alumno :', i
		Leer nombre[i]
	FinPara
	Escribir '--------------------------------------------------------------------'
	Escribir ' '
	Repetir
		Escribir '------------------------------- MENÚ PRINCIPAL -------------------------'
		Escribir 'Que desea hacer?'
		Escribir '1. Verificar asistencia'
		Escribir '2. Verificar promedio'
		Escribir '3. Ver cuantos alumnos cargó y sus respectvas verificaciones'
		Escribir '4. Salir'
		Escribir '------------- Elija el número de la opción que necesita ----------------'
		Leer menuPrincipal
		// verificar asistencia
		Si menuPrincipal=1 Entonces
			Escribir 'De qué alumno quiere verificar su asistencia?'
			Leer nomalum
			i <- 1
			Mientras nomalum<>nombre[i] Hacer
				i <- i+1
			FinMientras
			Escribir 'Ingrese el total de faltas del alumno : ', nombre[i]
			Leer f
			asist[i] <- (((t-f)/t)*100)
			Si asist[i]>=(asistmin*10) Entonces
				Escribir ' '
				Escribir '-------------------------------------------------------------------------'
				Escribir 'El alumno ', nombre[i], ' cumple con la asistencias a clases, con una asistencia total del ', asist[i], ' %.'
				Escribir '-------------------------------------------------------------------------'
				Escribir ' '
			SiNo
				Escribir ' '
				Escribir '-------------------------------------------------------------------------'
				Escribir 'El alumno ', nombre[i], ' NO cumple con las asistencias mínimas a clases, con una asistencia total del ', asist[i], ' %.'
				Escribir '-------------------------------------------------------------------------'
				Escribir ' '
			FinSi
		FinSi
		// verificar promedio
		Si menuPrincipal=2 Entonces
			Escribir 'Ingrese el nombre del alumno del que desea calcular el promedio: '
			Leer nombrealumno
			i <- 1
			Mientras nombrealumno<>nombre[i] Hacer
				i <- i+1
			FinMientras
			Para x<-1 Hasta numparc Hacer
				Escribir 'Ingrese la nota del parcial número ', x, ' del alumno ', nombre[i], '.'
				Leer nx
				sumnot <- sumnot+nx
			FinPara
			nota[i] <- (sumnot)/numparc
			Si nota[i]>=calprom Entonces
				Escribir ' '
				Escribir '-------------------------------------------------------------------------'
				Escribir 'El alumno ', nombre[i], ', promocionó la materia. Con una nota final de ', nota[i], '.'
				Escribir '-------------------------------------------------------------------------'
				Escribir ' '
			SiNo
				Si nota[i]<6 Entonces
					Escribir ' '
					Escribir '-------------------------------------------------------------------------'
					Escribir 'El alumno ', nombre[i], ', debe recursar la materia. Con una nota final de ', nota[i], '.'
					Escribir '-------------------------------------------------------------------------'
					Escribir ' '
				SiNo
					Escribir ' '
					Escribir '-------------------------------------------------------------------------'
					Escribir 'El alumno ', nombre[i], ', está en condicion intermedia. Con una nota final de ', nota[i], '.'
					Escribir '-------------------------------------------------------------------------'
					Escribir ' '
				FinSi
			FinSi
		FinSi
		// Ver los cargados al sistema
		Si menuPrincipal=3 Entonces
			Para i<-1 Hasta n Hacer
				Escribir ' '
				Escribir 'El alumno ', nombre[i], ', tiene una asitencia del: ', asist[i], '% del total de ', (asistmin*10), ' %, y un promedio de: ', nota[i], '.'
				Escribir ' '
			FinPara
		FinSi
	Hasta Que menuPrincipal=4
FinAlgoritmo

// Mientras asist[i] <> null O nota[i] <> null Hacer
// Escribir " " 
// Escribir "El alumno " nombre[i] ", tiene una asitencia del: " asist[i] "% del total de " (asistmin*10) " %, y un promedio de: " nota[i] "."
// Escribir " "
// i = i + 1
// Fin Mientras