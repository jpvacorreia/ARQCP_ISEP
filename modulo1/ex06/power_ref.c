void power_ref(int* x, int y) {
	
	if (y == 0) {
		*x = 1;
	}
	
	if (y < 0) {
		*x = 0;
	}

	
	int temp = *x;
	while (y > 1) {
	
		*x = *x * temp;
		y--;
	}
}