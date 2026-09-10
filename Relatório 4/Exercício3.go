package main

import "fmt"

func gerarEscalaPlantao(n int) {
	fmt.Println("--- Escala de Plantão Técnico ---")
	
	dia := 1 
	
	for i := 1; i <= n; i++ {
		fmt.Printf("Plantão %d: Dia %d do mês\n", i, dia)
		dia = dia + 4 
	}
}

func main() {
	var quantidade int

	fmt.Scan(&quantidade)

	gerarEscalaPlantao(quantidade)
}
