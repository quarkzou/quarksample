#include <stdio.h>

void foo(int* p)
{
	p[0] = 1;
}
// 测试跨函数能力
void func1(int* p)
{
	if(p)
	{
		printf("%p", p);
	}

	foo(p);
}


