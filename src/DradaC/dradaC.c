/* ######################################################################################### */
/* #                                        Basic DSL                                      # */
/* ######################################################################################### */
void encrire(char input[]) {
  printf("%s", input);
}

void encrireln(char input[]) {
  printf("%s\n", input);
}

void pgram(char v[], char o[], char s[]) {
  printf("['%s', '%s', '%s']", v, o, s);
}

void ntupe(char v[], char o[], char s[]) {
  printf("['%s', '%s', '%s']", v, o, s);
}

/* ######################################################################################### */
/* #                                       Word Order                                      # */
/* ######################################################################################### */
void osv(char o[], char s[], char v[]) {
  printf("%s %s %s, ", o, s, v);
}

void sov(char s[], char o[], char v[]) {
  printf("%s %s %s.\n", s, o, v);
}

void vos(char v[], char o[], char s[]) {
  printf("%s %s %s.\n", v, o, s);
}

/* ######################################################################################### */
/* #                                     Introductions                                     # */
/* ######################################################################################### */
void nom(char nom[]) {
  printf("Mes nom est %s. ", nom);
}

void qui(char qui[]) {
  printf("Sont vous %s. ", qui);
}

/* ######################################################################################### */
/* #                            Machine Learning Functionality                             # */
/* ######################################################################################### */
void hlim(char title[], char clemot[], char symbolique_une[], char numot_une[], char symbolique_deux[], char numot_deux[], char symbolique_trois[], char numot_trois[]) {
  printf("(encrireln %s)", title);
  printf("(%s 2 %s %s %s %s %s %s)", clemot, symbolique_une, numot_une, symbolique_deux, numot_deux, symbolique_trois, numot_trois);
  printf("(espace)");
}
