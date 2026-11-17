Funcion total <- LeerPedido
	Definir total, precio Como Real;
	Definir cantidad Como Entero;
	total <- 0;
	Escribir "Precio del producto (0 para terminar):";
	Leer precio;
	Mientras precio <> 0 Hacer
		Escribir "Cantidad:";
		Leer cantidad;
		total <- total + precio * cantidad;
		Escribir "Precio del producto (0 para terminar):";
		Leer precio;
	FinMientras
FinFuncion

Funcion resultado <- CalcularPorcentaje(valor, porcentaje)
	Definir resultado Como Real;
	resultado <- valor * porcentaje / 100;
FinFuncion

SubProceso imprimirFactura(subtotal, impuesto, propina)
	Escribir "------ FACTURA ------";
	Escribir "Subtotal: ", subtotal;
	Escribir "Impuesto (8%): ", impuesto;
	Escribir "Propina (10%): ", propina;
	Escribir "Total: ", subtotal + impuesto + propina;
FinSubProceso

Proceso FacturaRestaurante
	Definir subtotal, impuesto, propina Como Real;
	subtotal <- LeerPedido;
	impuesto <- CalcularPorcentaje(subtotal, 8);
	propina <- CalcularPorcentaje(subtotal, 10);
	imprimirFactura(subtotal, impuesto, propina);
FinProceso
