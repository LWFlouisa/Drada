# Drada
## Data Recycling Under Ambiguous Domain Applications
This is a subset within Awasunu and Naked Lisp (ala Nuerisupu). A macro system of functions I'm standardizing.

## Narrative Context
Before engaging with my software, please read my web fiction and webcomics first, as these are prerequisites:

[Uploaded Fairy](https://lwflouisa.github.io/pages/prose/UploadedFairyWebfiction/)<br />
[Uploaded Fairy Webcomic](https://lwflouisa.github.io/pages/webcomics/UploadedFairy/)<br />
[Ahuzacos Conlang](https://lwflouisa.github.io/pages/Ahuzacos/)<br />

Then play my game:

[Games](https://github.com/LWFlouisa/pages/tree/main/Games)

Otherwise pull requests and issues will go unread and removed. I'm trying to refocus on Codeberg development.

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
