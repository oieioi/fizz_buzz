// gcc -o fizz_buzz fizz_buzz.c
// ./fizz_buzz
#include <stdio.h>

int main(int argc, char *args[]) {
  for(int i = 1; i <= 100; i++) {
    if (i % 3 == 0) printf("Fizz");
    if (i % 5 == 0) printf("Buzz");
    if (i % 3 != 0 && i % 5 != 0) printf("%d", i);
    printf(",");
  }
  return 0;
}
