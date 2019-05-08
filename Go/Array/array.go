package main

import "fmt"

func main()  {
	var a[5] int;
	fmt.Println("emp:", a);

	a[4] = 100;
	fmt.Println("set:", a);
	fmt.Println("get:", a[4]);

	b := [5] int{1, 2, 3, 4, 5};

	fmt.Println("dcl:", b);
	fmt.Println("len:", len(b));

	var twoD[3][4]int
	
	for i := 0; i < 3; i++ {
		for j :=0; j < 4; j++ {
			twoD[i][j] = i+j;
		}
	}
	fmt.Println("twoD:", twoD);
}