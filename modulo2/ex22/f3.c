int f3(int i, int j){
	int h,g,r;
if (i >= j) {
h = i * j;
g = i + 1;
}
else {
h = i + j;
g = i + j + 2;
}
r = g / h;
return r;
}
