# Drada
A macro system of functions I'm standardizing.

## An Example In C
This is mainly for producing C interop from the main scripting language.

~~~c
#include <stdio.h>
#include <./src/DradaC/DradaC.c/>

int main(void) {
  description("Awasunu", "Compiled in Linus Torvalds Kernel");

  osv(objet("Le", "pomme"), sujet("je"), verb("mangeon"));
  sov(sujet("vous"), objet("le", "pomme"), verb("mangeon"));

  return 0;
}
~~~
