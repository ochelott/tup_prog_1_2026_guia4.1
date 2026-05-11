Proceso Turismo
	Definir edad, cant12, menorE, NroPasaje, reco, pasajeMenor Como Entero;
	Definir recau, recauTot Como Real;
	recauTot <- 0;
	
	
	Para reco = 1 Hasta 3 Hacer
		recau <- 0;
		cant12 <- 0;
		menorE <- 99;
		NroPasaje <- 0;
		pasajeMenor <- 0;
		Escribir "INGRESE EDAD: ";
		Leer edad;
		Mientras edad <> -1 Hacer
		NroPasaje <- NroPasaje + 1;
	
		Si edad < 12 Entonces
			recau <- recau + 1.50;
			cant12 <- cant12 + 1;
		FinSi
		Si edad >= 12 y edad < 17 Entonces
			recau <- recau + 2.25 + 1;
		SiNo
			recau <- recau + 4;
		FinSi
		Si edad < menorE Entonces
			menorE <- edad;
			pasajeMenor <- NroPasaje;
		FinSi
		Escribir "INGRESE EDAD: ";
		Leer edad;
	FinMientras
	Escribir "Cantidad de niños menores a 12 años: ", cant12;
	Escribir "Recaudacion del recorrido: $", trunc(recau * 100)/100;
	Escribir "El numero de pasaje con la menor edad: ", pasajeMenor;
	recauTot <- recauTot + recau;
FinPara
Escribir "Recaudacion total: $", trunc(recauTot * 100)/100;
FinProceso

