typedef unsigned long u64;

u64 addsome(u64 a, u64 b) {
	return a + b;
}

u64 addup(u64 *a, u64 len) {
	u64 sum = 0;

	for (u64 i = 0; i < len; i++) {
		sum += a[i];
	}

	return sum;
}