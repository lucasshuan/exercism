package lasagna

func PreparationTime(layers []string, avg int) int {
	if avg == 0 {
		avg = 2
	}
	return len(layers) * avg
}

func Quantities(layers []string) (int, float64) {
	var noodles int
	var sauces float64
	for i := 0; i < len(layers); i++ {
		switch layers[i] {
		case "noodles":
			noodles += 50
		case "sauce":
			sauces += 0.2
		}
	}
	return noodles, sauces
}

func AddSecretIngredient(friendsList, myList []string) {
	myList[len(myList)-1] = friendsList[len(friendsList)-1]
}

func ScaleRecipe(quantities []float64, num int) (scaledQuantities []float64) {
	for _, v := range quantities {
		scaledQuantities = append(scaledQuantities, v*float64(num)/2)
	}
	return
}