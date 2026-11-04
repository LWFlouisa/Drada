#include <stdio.h>
#include "./src/dradaC.c"

/*
########################################################################################
#                                      Hyperliminal                                    #
########################################################################################
# Hyperliminal allows AwasunuC to transpile to Awasunu script for machine learning ops #
# when piped through the interpreter.                                                  #
########################################################################################
*/
int main(int argc, char *argv[]) {
  char *first_symbol       = argv[1];
  char *first_description  = argv[2];
  char *second_symbol      = argv[3];
  char *second_description = argv[4];
  char *third_symbol       = argv[5];
  char *third_description  = argv[6];

  hlim(first_symbol, first_description, second_symbol, second_description, third_symbol, third_description);

  return 0;
}
