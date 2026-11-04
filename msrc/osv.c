#include <stdio.h>
#include "./src/dradaC.c"

int main(int argc, char *argv[]) {
  char *object1  = argv[1];
  char *subject1 = argv[2];
  char *verb1    = argv[3];

  char *verb2    = argv[4];
  char *object2  = argv[5];
  char *subject2 = argv[6];

  osv(object1, subject1, verb1); vos(verb2, object2, subject2);

  return 0;
}
