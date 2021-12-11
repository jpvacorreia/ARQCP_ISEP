void swap(int* vec1, int* vec2, int size){
	
	int vec3[size-1];
	int sizeClone=size-1;
	int *vec3Ptr = 0;
	while (sizeClone>=0){
		vec3[sizeClone]=rand() % 2;
		sizeClone--;
	}
	vec3Ptr = vec3;
	sizeClone=size-1;
	while (sizeClone>=0){
		*vec3Ptr = *vec1;
		*vec1 = *vec2;
		*vec2 = *vec3Ptr;
		vec1++;
		vec2++;
		vec3Ptr++;
		sizeClone--;
	}
}
