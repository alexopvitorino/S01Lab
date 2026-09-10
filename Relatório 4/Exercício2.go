package main

import "fmt"

func main() {
	var t1, t2, t3 int

	fmt.Scan(&t1, &t2, &t3)

	soma := t1 + t2 + t3
	fmt.Println("Total de vendas:", soma, "unidades")

	if soma < 100 {
		fmt.Println("Meta mínima anual não atingida!")
	} else {
		switch {
		case soma >= 250:
			fmt.Println("Categoria Top Seller")
		case soma >= 180 && soma <= 249:
			fmt.Println("Categoria Sênior")
		case soma >= 100 && soma <= 179:
			fmt.Println("Categoria Pleno")
		}
	}
}
