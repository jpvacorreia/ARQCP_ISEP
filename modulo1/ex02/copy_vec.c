void copy_vec(int *vec1, int *vec2, int n) {
	int i = 0;
	while (i < n) {
		*vec2 = *vec1;
		i++;
		vec2++;
		vec1++;
	}
	return;
}
