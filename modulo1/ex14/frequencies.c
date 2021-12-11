void frequencies(float *grades, int n, int *freq){

	int sizeFreq = 21;
		
	int i = 0;
	while (i < sizeFreq) {
		freq[i] = 0;
		i++;
	}
		
	if (n != 0 ) { // need to check if grades array is not null;

		while (n > 0) {

				int grade = (int) *grades;
		
				freq[grade]++;
		

				n--;

			grades++;
		}
	}
}