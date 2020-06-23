#include <emscripten.h>

EMSCRIPTEN_KEEPALIVE
int square(int number){
	return number * number;
}

EMSCRIPTEN_KEEPALIVE
int fib(int number){
	if(number == 0)
		return 0;
	if(number == 1)
		return 1;

	return fib(number-1) + fib(number-2);
}