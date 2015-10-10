#include <stdio.h>

int main(int argc, char* argv[])
{
#ifdef __APPLE__
	printf("hello mac\n");
#endif
	return 0;
}
