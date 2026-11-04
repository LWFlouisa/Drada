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
  char *title            = argv[1];

  // First symbol and description pair
  char *symbolique_une   = argv[2];
  char *numot_une        = argv[3];

  // Second symbol and description pair.
  char *symbolique_deux  = argv[4];
  char *numot_deux       = argv[5];

  // Third symbol and description pair.
  char *symbolique_trois = argv[6];
  char *numot_trois      = argv[7];

  hlim(title, symbolique_une, numot_une, symbolique_deux, numot_deux, symbolique_trois, numot_trois);

  return 0;
}
