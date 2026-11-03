# Drada
## Data Recycling Under Ambiguous Domain Applications
This is a subset within Awasunu and Naked Lisp (ala Nuerisupu). A macro system of functions I'm standardizing.

## An Example In C
This is mainly for producing C interop from the main scripting language as an embedded DSL.

~~~c
#include <stdio.h>
#include "./src/DradaC/DradaC.c"

int main(void) {
  description("Awasunu", "Compiled in Linus Torvalds Kernel");

  osv(objet("Le", "pomme"), sujet("je"), verb("mangeon"));
  sov(sujet("vous"), objet("le", "banane"), verb("mangeon"));

  return 0;
}
~~~
