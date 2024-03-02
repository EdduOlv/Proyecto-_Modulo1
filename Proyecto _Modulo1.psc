//Funcion de multiplicacion
Funcion total <- multiplicacion ( n1,n2 )
	total<- n1*n2
Fin Funcion
//Funcion de sumar
Funcion resultado <- suma ( n1,n2 )
	resultado<-n1+n2
Fin Funcion
//Funcion para seleccionar el tipo de descuento segun unidades, llaveros y cliente nuevo
Funcion descuento_fun <- calcular_descuento ( unidades_aros,unidades_llav,respuesta_client )
	descuento_fun<-1
	descuento_fun10<-0.9
	descuento_fun20<-0.8
	descuento_fun30<-0.7
	descuento_c<- 0.15
	Si unidades_aros > 99 Y unidades_aros < 200 Y unidades_llav >9 Entonces
		descuento_fun <-descuento_fun10
	Fin Si
	Si unidades_aros > 199 Y unidades_aros < 300 Y unidades_llav >9 Entonces
		descuento_fun <- unidades_llav
	Fin Si
	Si unidades_aros >= 300 Y unidades_llav >9 Entonces
		descuento_fun <- descuento_fun30
	Fin Si
	Si respuesta_client = "si" Entonces
		descuento_fun<-descuento_fun-descuento_c
	Fin Si
Fin Funcion
//Funcion para calcular el costo del despacho segun peso de total de aros y llaveros
Funcion envio <- calcular_peso ( peso_total,envio )
	envio <- 1
	envio1 <- 1.10
	envio2 <- 1.20
	envio3 <- 1.30
	Si peso_total > 999 Y peso_total < 2000  Entonces
		envio <-envio1
	Fin Si
	Si peso_total > 1999 Y peso_total < 3000 Entonces
		envio <- envio2
	Fin Si
	Si peso_total >= 3000  Entonces
		envio <- envio3
	Fin Si
Fin Funcion

Algoritmo Proyecto_Modulo1
	
	definir respuesta_client Como Caracter
	definir carrito_actual Como Real
	Dimension aros[8]
	Dimension nombres_aro[8] 
	Dimension llaveros[6]
	Dimension nombres_llaveros[6]
	Dimension despachos[5]
	definir respuesta_aro Como Entero
	definir respuesta_llav Como Entero
	definir unidad1 Como Entero
	definir unidad2 Como Entero
	definir unidades Como Entero
	definir mont_aro Como Real
	definir mont_llav Como Real
	definir respuesta_ciclo1 Como Caracter
	Definir respuesta_ciclo2 Como Caracter
	definir respuesta3 Como Caracter
	definir elim_algo Como Caracter
	definir boleta Como Real
	definir total Como Real
	definir peso como real
	definir impuesto Como Real
	definir descuento_total Como Real
	
	// Variables iniciales
	
	impuesto =0.19
	peso_aro<- 9
	peso_llavero<-20
	costo_peso<-0
	peso_total<-0
	unidades_aros<-0
	unidad1<-0
	unidad2<-0
	carrito_actual<-0
	total<-0
	mont_aro<-0
	mont_llav<-0
	descuento_total<-1
	aros[i] <- 0
	aros[1] <- 2000
	aros[2] <- 2200
	aros[3] <- 2700
	aros[4] <- 3000
	aros[5] <- 3000
	aros[6] <- 3400
	aros[7] <- 3500
	nombres_aro[i] <- "aro 0"
	nombres_aro[1] <- "aro 1"
	nombres_aro[2] <- "aro 2"
	nombres_aro[3] <- "aro 3"
	nombres_aro[4] <- "aro 4"
	nombres_aro[5] <- "aro 5"
	nombres_aro[6] <- "aro 6"
	nombres_aro[7] <- "aro 7"
	llaveros[i] <- 0
	llaveros[1] <- 1000
	llaveros[2] <- 1300
	llaveros[3] <- 1500
	llaveros[4] <- 1000
	llaveros[5] <- 1500
	nombres_llaveros[i] <-"llavero 0"
	nombres_llaveros[1] <-"llavero 1"
	nombres_llaveros[2] <-"llavero 2"
	nombres_llaveros[3] <-"llavero 3"
	nombres_llaveros[4] <-"llavero 4"
	nombres_llaveros[5] <-"llavero 5"
	despachos[i] <- 0
	despachos[1] <- 0
	despachos[2] <- 5000
	despachos[3] <- 10000
	despachos[4] <- 30000
	
	//Bienvenida
	escribir "Bienbenidos a Aretes Nube"
	escribir "Somos una tienda online de aretes y llaveros a por mayor"
	Escribir "Actualmente tenemos un descuento si llevas más unidades de aros y diez llaveros"
	Escribir "100 unidades de aros más 10 llavero 10 % de descuento"
	Escribir "200 unidades de aros más 10 llavero 20 % de descuento"
	Escribir "300 unidades de aros más 10 llavero 30 % de descuento"
	escribir "¿Es usted cliente nuevo?"
	escribir "Indique su respuesta con Si o No"
	leer respuesta_client
	
	//Comprobacion ingreso de alternativas validas
	
	Si respuesta_client = "si" O respuesta_client = "no" Entonces
		Si respuesta_client = "si" Entonces
			Escribir "Por ser cliente nuevo tienes 15% de descuento"
			escribir "|-----------------------------------------------------------------| "
			
		SiNo
			escribir "|-----------------------------------------------------------------| "
			
		Fin Si
	SiNo
		Repetir
			Escribir "Introduzca una opcion valida"
			escribir "Indique su respuesta con Si o No"
			leer respuesta_client
		Hasta Que respuesta_client = "si" O respuesta_client = "no"
		
		Si respuesta_client = "si" Entonces
			Escribir "Por ser cliente nuevo tienes 15% de descuento"
			escribir "|-----------------------------------------------------------------| "
			
		SiNo
			escribir "|-----------------------------------------------------------------| "
			
		Fin Si
		
	Fin Si
	
	//Primer ciclo de compra
	
	repetir 
		
		escribir "Elija el numero de producto"
		escribir "1. " nombres_aro[1] " $" aros[1]
		escribir "2. " nombres_aro[2] " $" aros[2]
		escribir "3. " nombres_aro[3] " $" aros[3]
		escribir "4. " nombres_aro[4] " $" aros[4]
		escribir "5. " nombres_aro[5] " $" aros[5]
		escribir "6. " nombres_aro[6] " $" aros[6]
		escribir "7. " nombres_aro[7] " $" aros[7]
		leer respuesta_aro
		
		//Comprobación ingreso de opciones validas
		
		Mientras respuesta_aro = 0 O respuesta_aro >7 
			Escribir "Introduzca un numero de producto valido"
			leer respuesta_aro
		fin mientras 
		
		Escribir "¿Cuantas unidades quiere llevar?"
		leer unidad1
		
		//Comprobación ingreso unidades validas
		
		Si unidad1 = 0  Entonces
			Repetir
				Escribir "Introduzca una unidad valida"
				leer unidad1
			Hasta Que unidad1 >0
		Fin Si
		
		//Asignacion de monto al carrito actual segun seleccion de aro y unidades
		
		Segun respuesta_aro Hacer
			1:
				carrito_actual <-carrito_actual+aros[1]*unidad1
			2:
				carrito_actual <-carrito_actual+aros[2]*unidad1
			3:
				carrito_actual <-carrito_actual+aros[3]*unidad1
			4:
				carrito_actual <-carrito_actual+aros[4]*unidad1
			5:
				carrito_actual <-carrito_actual+aros[5]*unidad1
			6:
				carrito_actual <-carrito_actual+aros[6]*unidad1
			7:
				carrito_actual <-carrito_actual+aros[7]*unidad1
			De Otro Modo:
				
		Fin Segun
		
		//Asignacion de monto al monto de aros segun seleccion de aro y unidades
		
		Segun respuesta_aro Hacer
			1:
				mont_aro <-mont_aro+aros[1]*unidad1
			2:
				mont_aro <-mont_aro+aros[2]*unidad1
			3:
				mont_aro <-mont_aro+aros[3]*unidad1
			4:
				mont_aro <-mont_aro+aros[4]*unidad1
			5:
				mont_aro <-mont_aro+aros[5]*unidad1
			6:
				mont_aro <-mont_aro+aros[6]*unidad1
			7:
				mont_aro <-mont_aro+aros[7]*unidad1
			De Otro Modo:
		Fin Segun
		
		//Operaciones para añadir peso y unidades
		
		unidades_aros<-suma ( unidades_aros,unidad1 )
		peso_unidad1<- multiplicacion ( peso_aro,unidades_aros )
		
		
		//Consulta para repetir primer ciclo
		
		Escribir "Actualmente su carrito es de " carrito_actual
		Escribir "Unidades totales son: " unidades_aros
		Escribir "El peso de lo aros son: " peso_unidad1 "Gm"
		escribir "Desea añadir algun aro más"
		escribir "Indique su respuesta con Si o No"
		leer respuesta_ciclo1
		
		//Comprobacion ingreso de alternativas validas
		
		Si respuesta_ciclo1 = "si" O respuesta_ciclo1 = "no" Entonces
			escribir "|-----------------------------------------------------------------| "
		SiNo
			Repetir
				Escribir "Introduzca una opcion valida"
				escribir "Indique su respuesta con Si o No"
				leer respuesta_ciclo1
			Hasta Que respuesta_ciclo1 = "si" O respuesta_ciclo1 = "no"
			Si respuesta_ciclo1 = "si" Entonces
				escribir "|-----------------------------------------------------------------| "
			SiNo
				escribir "|-----------------------------------------------------------------| "
			Fin Si
			
		Fin Si
	hasta que respuesta_ciclo1 = "no"
	
	// Ciclo 2 de compra
	
	
	Escribir "¿Desea llevar algun llavero?"
	escribir "Indique su respuesta con Si o No"
	leer respuesta_ciclo2
	
	//Comprobacion ingreso de alternativas validas
	
	Si respuesta_ciclo2 = "si" O respuesta_ciclo2 = "no" Entonces
		Si respuesta_ciclo2 = "si" Entonces
			escribir "|-----------------------------------------------------------------| "
		SiNo
			escribir "|-----------------------------------------------------------------| "
		Fin Si
	SiNo
		Repetir
			Escribir "Introduzca una opcion valida"
			escribir "Indique su respuesta con Si o No"
			leer respuesta_ciclo2
		Hasta Que respuesta_ciclo2 = "si" O respuesta_ciclo2 = "no"
		Si respuesta_ciclo2 = "si" Entonces
			escribir "|-----------------------------------------------------------------| "
		SiNo
			escribir "|-----------------------------------------------------------------| "
		Fin Si
		
	Fin Si
	
	
	mientras respuesta_ciclo2 = "si"
		escribir "Elija algun producto"
		escribir "1. " nombres_llaveros[1] " $" llaveros[1]
		escribir "2. " nombres_llaveros[2] " $" llaveros[2]
		escribir "3. " nombres_llaveros[3] " $" llaveros[3]
		escribir "4. " nombres_llaveros[4] " $" llaveros[4]
		escribir "5. " nombres_llaveros[5] " $" llaveros[5]
		leer respuesta_llav
		
		//Comprobación ingreso de opciones validas
		
		mientras respuesta_llav = 0 O respuesta_llav >5
			Escribir "Introduzca un numero de producto valido"
			leer respuesta_llav
		fin mientras
		
		Escribir "¿cuantas unidades quiere llevar?"
		leer unidad2
		
		//Comprobación ingreso unidades validas
		
		Si unidad2 = 0  Entonces
			Repetir
				Escribir "Introduzca una unidad valida"
				leer unidad2
			Hasta Que unidad2 >0
		Fin Si
		
		//Asignacion de monto al carrito actual segun seleccion de llavero y unidades
		
		Segun respuesta_llav Hacer
			1:
				carrito_actual <-carrito_actual+llaveros[1]*unidad2
			2:
				carrito_actual <-carrito_actual+llaveros[2]*unidad2
			3:
				carrito_actual <-carrito_actual+llaveros[3]*unidad2
			4:
				carrito_actual <-carrito_actual+llaveros[4]*unidad2
			5:
				carrito_actual <-carrito_actual+llaveros[5]*unidad2
			De Otro Modo:
				
		Fin Segun
		
		//Asignacion de monto al monto de llaveros segun seleccion de llavero y unidades
		
		Segun respuesta_llav Hacer
			1:
				mont_llav <-mont_llav+llaveros[1]*unidad2
			2:
				mont_llav <-mont_llav+llaveros[2]*unidad2
			3:
				mont_llav <-mont_llav+llaveros[3]*unidad2
			4:
				mont_llav <-mont_llav+llaveros[4]*unidad2
			5:
				mont_llav <-mont_llav+llaveros[5]*unidad2
			De Otro Modo:
				
		Fin Segun
		
		//Operaciones para añadir peso y unidades
		
		unidades_llav<-suma ( unidades_llav,unidad2 )
		peso_unidad2<-multiplicacion ( peso_llavero,unidades_llav )
		
		//Consulta para repetir segundo ciclo
		
		Escribir "Actualmente su carrito es de " carrito_actual
		Escribir "Unidades totales son: " unidades_llav
		Escribir "El peso de lo aros son: " peso_unidad2 "Gm"
		escribir "Desea añadir algun llavero más"
		escribir "Indique su respuesta con Si o No"
		leer respuesta_ciclo2
		
		//Comprobacion ingreso de alternativas validas
		
		Si respuesta_ciclo2 = "si" O respuesta_ciclo2 = "no" Entonces
			escribir "|-----------------------------------------------------------------| "
		SiNo
			Repetir
				Escribir "Introduzca una opcion valida"
				escribir "Indique su respuesta con Si o No"
				leer respuesta_ciclo2
			Hasta Que respuesta_ciclo2 = "si" O respuesta_ciclo1 = "no"
			Si respuesta_ciclo2 = "si" Entonces
				escribir "|-----------------------------------------------------------------| "
			SiNo
				escribir "|-----------------------------------------------------------------| "
			Fin Si
			
		Fin Si
		
		
	fin mientras 

	// Etapa de opciones de eliminar
	
	Escribir "Unidades aros__________________________: " unidades_aros 
	Escribir "Unidades llaveros______________________: " unidades_llav
	Escribir "PESO TOTAL_____________________________: " suma(peso_unidad1,peso_unidad2) "Gm"
	escribir "AROS___________________________________: " mont_aro
	Escribir "LLAVEROS_______________________________: " mont_llav
	Escribir "TOTAL__________________________________: " carrito_actual
	Escribir "¿Desea eliminar algo de su carrito?"
	Escribir "Escriba (no) si quiere proceder al pago"
	Escribir "Escriba (aros) para eliminar los aros del carro"
	Escribir "Escriba (llaveros) para eliminar los llaveros del carro"
	leer elim_algo
	

	
	//Comprobacion ingreso de alternativas validas
	
	Si elim_algo = "no"  O elim_algo = "aros"  O elim_algo = "llaveros"  Entonces
		
		Segun elim_algo Hacer
			"no":
				escribir "|-----------------------------------------------------------------| "
			"aros":
				escribir "|-----------------------------------------------------------------| "
			"llaveros":
				escribir "|-----------------------------------------------------------------| "
			De Otro Modo:
		Fin Segun
		
	SiNo
		Repetir
			Escribir "Introduzca una opcion valida"
			Escribir "Escriba (no) si quiere proceder al pago"
			Escribir "Escriba (aros) para eliminar los aros del carro"
			Escribir "Escriba (llaveros) para eliminar los llaveros del carro"
			leer elim_algo
		Hasta Que elim_algo = "no"  O elim_algo = "aros"  O elim_algo = "llaveros"
		Segun elim_algo Hacer
			"no":
				escribir "|-----------------------------------------------------------------| "
			"aros":
				escribir "|-----------------------------------------------------------------| "
			"llaveros":
				escribir "|-----------------------------------------------------------------| "
			De Otro Modo:
		Fin Segun
		
	Fin Si
	
	//Rutas para finalizar la compra
	
	si elim_algo = "aros" O elim_algo = "llaveros" Entonces
		
		Segun elim_algo Hacer
			
			//Ruta eliminar aros
			
			"aros":
				
				//Actualizacion de a valores actuales por seleccion y impresion de valores actuales
				
				carrito_actual<- carrito_actual-mont_aro
				unidades_aros<-0
				unidad1<-0
				mont_aro<- 0
				peso_unidad1<-0
				Escribir "Se han eliminado los aros del carrito"
				Escribir "TOTAL ACTUAL_______________________________: " carrito_actual
				escribir "AROS_______________________________________: " mont_aro
				Escribir "LLAVEROS___________________________________: " mont_llav
				escribir "PESO TOTAL_________________________________: " peso_unidad2 "Gm"
				Escribir "Desea eliminar los llaveros del carrito"
				escribir "Indique su respuesta con Si o No"
				leer respuesta3
				
				//Comprobacion ingreso de alternativas validas
				
				Si respuesta3 = "si" O respuesta3 = "no" Entonces
					Si respuesta3 = "si" Entonces
						escribir "|-----------------------------------------------------------------| "
					SiNo
						escribir "|-----------------------------------------------------------------| "
					Fin Si
				SiNo
					Repetir
						Escribir "Introduzca una opcion valida"
						escribir "Indique su respuesta con Si o No"
						leer respuesta3
					Hasta Que respuesta3 = "si" O respuesta3 = "no"
					Si respuesta3 = "si" Entonces
						escribir "|-----------------------------------------------------------------| "
					SiNo
						escribir "|-----------------------------------------------------------------| "
					Fin Si
				Fin Si
				
				si respuesta3 = "si" Entonces
					
					//Ruta eliminar aros - llaveros (compra cancelada)
					
					unidad2<-0
					unidades_llav<-0
					carrito_actual<- carrito_actual-mont_llav
					mont_llav<-0
					
					//Impresion de Boleta (compra cancelada)
					
					Escribir "Se han eliminado los llaveros del carrito"
					Escribir "TOTAL ACTUAL_______________________________: " carrito_actual
					escribir "AROS_______________________________________: " mont_aro
					Escribir "LLAVEROS___________________________________: " mont_llav
					Escribir "El carrito esta vacio"
					Escribir "COMPRA CANCELADA"
					
				SiNo
					
					// Ruta Boleta eliminando aros
					// Seleccion tipo de despacho
					
					Escribir "Eliga el tipo de envio (segun el peso del envio pueden existir cargos adicionales)"
					Escribir "Escriba (local) para retitar en tienda"
					Escribir "Escriba (rm) para despachos dentro de Santiago (Region Metropolitana)"
					Escribir "Escriba (regional) para despachos a Regiones (Calquier Region de Chile)"
					Escribir "Escriba (internacional) para despacho Internacional"
					leer tipo_despacho
					
					//Comprobacion ingreso de alternativas validas
					
					Si tipo_despacho = "local"  O tipo_despacho = "rm"  O tipo_despacho = "regional" O tipo_despacho = "internacional" Entonces
						Segun tipo_despacho Hacer
							"local":
								escribir "|-----------------------------------------------------------------| "
							"rm":
								escribir "|-----------------------------------------------------------------| "
							"regional":
								escribir "|-----------------------------------------------------------------| "
							"internacional":
								escribir "|-----------------------------------------------------------------| "
							De Otro Modo:
						Fin Segun
					SiNo
						Repetir
							Escribir "Introduzca una opcion valida"
							Escribir "Escriba (local) para retitar en tienda"
							Escribir "Escriba (rm) para despachos dentro de Santiago (Region Metropolitana)"
							Escribir "Escriba (regional) para despachos a Regiones (Calquier Region de Chile)"
							Escribir "Escriba (internacional) para despacho Internacional"
							leer tipo_despacho
						Hasta Que tipo_despacho = "local"  O tipo_despacho = "rm"  O tipo_despacho = "regional" O tipo_despacho = "internacional"
						Segun tipo_despacho Hacer
							"local":
								escribir "|-----------------------------------------------------------------| "
							"rm":
								escribir "|-----------------------------------------------------------------| "
							"regional":
								escribir "|-----------------------------------------------------------------| "
							"internacional":
								escribir "|-----------------------------------------------------------------| "
							De Otro Modo:
						Fin Segun
					Fin Si
					
					// Logica para selecion de costo de despacho usando funciones
					
					Segun tipo_despacho Hacer
						"local":
							escribir "No existen costos de envio"
							escribir "|-----------------------------------------------------------------| "
						"rm":
							peso_total<- suma(peso_unidad1,peso_unidad2)
							costo_peso <- calcular_peso( peso_total,envio)
							costo_despacho<-multiplicacion(despachos[2],costo_peso)
							escribir "COSTO ENVIO___________________________________: " costo_despacho
							
						"regional":
							peso_total<- suma(peso_unidad1,peso_unidad2)
							costo_peso <- calcular_peso( peso_total,envio)
							costo_despacho<-multiplicacion(despachos[3],costo_peso)
							escribir "COSTO ENVIO___________________________________: " costo_despacho
						"internacional":
							peso_total<- suma(peso_unidad1,peso_unidad2)
							costo_peso <- calcular_peso( peso_total,envio)
							costo_despacho <- multiplicacion(despachos[4],costo_peso)
							escribir "COSTO ENVIO___________________________________: " costo_despacho
					Fin Segun
					
					// Logica para selecion de descuento usando funciones
					
					total<-carrito_actual
					descuento_total<-calcular_descuento ( unidades_aros,unidades_llav,respuesta_client )
					boleta<-multiplicacion(carrito_actual,descuento_total)
					boleta<-boleta+costo_despacho
					
					//Impresion de Boleta sin aros
					
					Escribir "__________________BOLETA__________________"
					Escribir "                                          "
					Escribir "AROS___________________________________: " mont_aro
					Escribir "LLAVEROS_______________________________: " mont_llav
					escribir "COSTO ENVIO____________________________: " costo_despacho
					Escribir "IVA____________________________________: " multiplicacion(total,impuesto)
					Escribir "TOTAL (SIN DESCUENTOS)_________________: " total+costo_despacho
					Escribir "TOTAL PAGADO___________________________: " boleta
					
				FinSi
				
				//Ruta eliminar llaveros
				
			"llaveros":
				
				//Actualizacion de a valores actuales por seleccion y impresion de valores actuales
				
				carrito_actual<- carrito_actual-mont_llav
				unidad2<-0
				unidades_llav<-0
				mont_llav<-0
				peso_unidad2<-0
				Escribir "Se han eliminado los llaveros del carrito"
				Escribir "TOTAL ACTUAL_______________________________: " carrito_actual
				escribir "AROS_______________________________________: " mont_aro
				Escribir "LLAVEROS___________________________________: " mont_llav
				escribir "PESO TOTAL_________________________________: " peso_unidad1 "Gm"
				Escribir "Desea eliminar los aros del carrito"
				leer respuesta3
				
				//Comprobacion ingreso de alternativas validas
				
				Si respuesta3 = "si" O respuesta3 = "no" Entonces
					Si respuesta3 = "si" Entonces
						escribir "|-----------------------------------------------------------------| "
					SiNo
						escribir "|-----------------------------------------------------------------| "
					Fin Si
				SiNo
					Repetir
						Escribir "Introduzca una opcion valida"
						escribir "Indique su respuesta con Si o No"
						leer respuesta3
					Hasta Que respuesta3 = "si" O respuesta3 = "no"
					Si respuesta3 = "si" Entonces
						escribir "|-----------------------------------------------------------------| "
					SiNo
						escribir "|-----------------------------------------------------------------| "
					Fin Si
				Fin Si
				
				//Ruta eliminar llaveros - aros (compra cancelada)
				
				si respuesta3 = "si" Entonces
					carrito_actual<- carrito_actual-mont_aro
					
					//Impresion de Boleta (compra cancelada) 
					
					Escribir "Se han eliminado los aros del carrito"
					Escribir "TOTAL ACTUAL___________________________: " carrito_actual
					escribir "AROS___________________________________: " mont_aro
					Escribir "LLAVEROS_______________________________: " mont_llav
					Escribir "El carrito esta vacio"
					Escribir "COMPRA CANCELADA"
					
				SiNo
					
					// Ruta Boleta eliminando llaveros
					// Seleccion tipo de despacho
					
					Escribir "Eliga el tipo de envio (segun el peso del envio pueden existir cargos adicionales)"
					Escribir "Escriba (local) para retitar en tienda"
					Escribir "Escriba (rm) para despachos dentro de Santiago (Region Metropolitana)"
					Escribir "Escriba (regional) para despachos a Regiones (Calquier Region de Chile)"
					Escribir "Escriba (internacional) para despacho Internacional"
					leer tipo_despacho
					
					//Comprobacion ingreso de alternativas validas
					
					Si tipo_despacho = "local"  O tipo_despacho = "rm"  O tipo_despacho = "regional" O tipo_despacho = "internacional" Entonces
						Segun tipo_despacho Hacer
							"local":
								escribir "|-----------------------------------------------------------------| "
							"rm":
								escribir "|-----------------------------------------------------------------| "
							"regional":
								escribir "|-----------------------------------------------------------------| "
							"internacional":
								escribir "|-----------------------------------------------------------------| "
							De Otro Modo:
						Fin Segun
					SiNo
						Repetir
							Escribir "Introduzca una opcion valida"
							Escribir "Escriba (local) para retitar en tienda"
							Escribir "Escriba (rm) para despachos dentro de Santiago (Region Metropolitana)"
							Escribir "Escriba (regional) para despachos a Regiones (Calquier Region de Chile)"
							Escribir "Escriba (internacional) para despacho Internacional"
							leer tipo_despacho
						Hasta Que tipo_despacho = "local"  O tipo_despacho = "rm"  O tipo_despacho = "regional" O tipo_despacho = "internacional"
						Segun tipo_despacho Hacer
							"local":
								escribir "|-----------------------------------------------------------------| "
							"rm":
								escribir "|-----------------------------------------------------------------| "
							"regional":
								escribir "|-----------------------------------------------------------------| "
							"internacional":
								escribir "|-----------------------------------------------------------------| "
							De Otro Modo:
						Fin Segun
					Fin Si
					
					// Logica para selecion de costo de despacho usando funciones
					
					Segun tipo_despacho Hacer
						"local":
							escribir "No existen costos de envio"
							escribir "|-----------------------------------------------------------------| "
						"rm":
							peso_total<- suma(peso_unidad1,peso_unidad2)
							costo_peso <- calcular_peso( peso_total,envio)
							costo_despacho<-multiplicacion(despachos[2],costo_peso)
							escribir "COSTO ENVIO___________________________________: " costo_despacho
							
						"regional":
							peso_total<- suma(peso_unidad1,peso_unidad2)
							costo_peso <- calcular_peso( peso_total,envio)
							costo_despacho<-multiplicacion(despachos[3],costo_peso)
							escribir "COSTO ENVIO___________________________________: " costo_despacho
						"internacional":
							peso_total<- suma(peso_unidad1,peso_unidad2)
							costo_peso <- calcular_peso( peso_total,envio)
							costo_despacho <- multiplicacion(despachos[4],costo_peso)
							escribir "COSTO ENVIO___________________________________: " costo_despacho
					Fin Segun
					
					// Logica para selecion de descuento usando funciones
					
					total<-carrito_actual
					Escribir "carrito " carrito_actual
					Escribir "carrito " total
					descuento_total<-calcular_descuento ( unidades_aros,unidades_llav,respuesta_client )
					Escribir "descuento total " descuento_total
					boleta<-multiplicacion(carrito_actual,descuento_total)
					Escribir "boleta " boleta
					boleta<-boleta+costo_despacho
					
					//Impresion de Boleta sin llaveros
					
					Escribir "------------------BOLETA------------------"
					Escribir "                                          "
					Escribir "AROS___________________________________: " mont_aro
					Escribir "LLAVEROS_______________________________: " mont_llav
					escribir "COSTO ENVIO____________________________: " costo_despacho
					Escribir "IVA____________________________________: " multiplicacion(total,impuesto)
					Escribir "TOTAL (SIN DESCUENTOS)_________________: " total+costo_despacho
					Escribir "TOTAL PAGADO___________________________: " boleta
					
				FinSi
			De Otro Modo:
		Fin Segun
	SiNo
		// Ruta Boleta completa
		// Seleccion tipo de despacho
		
		Escribir "Eliga el tipo de envio (segun el peso del envio pueden existir cargos adicionales)"
		Escribir "Escriba (local) para retitar en tienda"
		Escribir "Escriba (rm) para despachos dentro de Santiago (Region Metropolitana)"
		Escribir "Escriba (regional) para despachos a Regiones (Calquier Region de Chile)"
		Escribir "Escriba (internacional) para despacho Internacional"
		leer tipo_despacho
		
		//Comprobacion ingreso de alternativas validas
		
		Si tipo_despacho = "local"  O tipo_despacho = "rm"  O tipo_despacho = "regional" O tipo_despacho = "internacional" Entonces
			Segun tipo_despacho Hacer
				"local":
					escribir "|-----------------------------------------------------------------| "
				"rm":
					escribir "|-----------------------------------------------------------------| "
				"regional":
					escribir "|-----------------------------------------------------------------| "
				"internacional":
					escribir "|-----------------------------------------------------------------| "
				De Otro Modo:
			Fin Segun
		SiNo
			Repetir
				Escribir "Introduzca una opcion valida"
				Escribir "Escriba (local) para retitar en tienda"
				Escribir "Escriba (rm) para despachos dentro de Santiago (Region Metropolitana)"
				Escribir "Escriba (regional) para despachos a Regiones (Calquier Region de Chile)"
				Escribir "Escriba (internacional) para despacho Internacional"
				leer tipo_despacho
			Hasta Que tipo_despacho = "local"  O tipo_despacho = "rm"  O tipo_despacho = "regional" O tipo_despacho = "internacional"
			Segun tipo_despacho Hacer
				"local":
					escribir "|-----------------------------------------------------------------| "
				"rm":
					escribir "|-----------------------------------------------------------------| "
				"regional":
					escribir "|-----------------------------------------------------------------| "
				"internacional":
					escribir "|-----------------------------------------------------------------| "
				De Otro Modo:
			Fin Segun
		Fin Si
		
		// Logica para selecion de costo de despacho usando funciones
		
		Segun tipo_despacho Hacer
			"local":
				escribir "No existen costos de envio"
				escribir "|-----------------------------------------------------------------| "
			"rm":
				peso_total<- suma(peso_unidad1,peso_unidad2)
				costo_peso <- calcular_peso( peso_total,envio)
				costo_despacho<-multiplicacion(despachos[2],costo_peso)
				escribir "COSTO ENVIO___________________________________: " costo_despacho
				
			"regional":
				peso_total<- suma(peso_unidad1,peso_unidad2)
				costo_peso <- calcular_peso( peso_total,envio)
				costo_despacho<-multiplicacion(despachos[3],costo_peso)
				escribir "COSTO ENVIO___________________________________: " costo_despacho
			"internacional":
				peso_total<- suma(peso_unidad1,peso_unidad2)
				costo_peso <- calcular_peso( peso_total,envio)
				costo_despacho <- multiplicacion(despachos[4],costo_peso)
				escribir "COSTO ENVIO___________________________________: " costo_despacho
		Fin Segun
		
		// Logica para selecion de descuento usando funciones
		
		total<-carrito_actual
		descuento_total<-calcular_descuento ( unidades_aros,unidades_llav,respuesta_client )
		boleta<-multiplicacion(carrito_actual,descuento_total)
		boleta<-boleta+costo_despacho
		
		//Impresion de Boleta completa
		
		Escribir "                                          "
		Escribir "------------------BOLETA------------------"
		Escribir "AROS___________________________________: " mont_aro
		Escribir "LLAVEROS_______________________________: " mont_llav
		escribir "COSTO ENVIO____________________________: " costo_despacho
		Escribir "IVA____________________________________: " multiplicacion(total,impuesto)
		Escribir "TOTAL (SIN DESCUENTOS)_________________: " total+costo_despacho
		Escribir "TOTAL PAGADO___________________________: " boleta
	FinSi
	
FinAlgoritmo
