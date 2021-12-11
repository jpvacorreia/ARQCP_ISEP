int odd_sum(int *p) {
	
	int size = p[0];
	int sum = 0;
	int i = 1;
	
	while (size > 0) {
		if (*(p + i) % 2 != 0) {
			sum += *(p + i);
		}
		i++;
		size--;
	}
	return sum;
}