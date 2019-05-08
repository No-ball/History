#include "pch.h"

#include<stdio.h>
#include<stdlib.h>

int main(void) {
	void* str = malloc(0x86);
	void* str2 = malloc(0x86);

	free(str);
	free(str2);
	free(str);
}