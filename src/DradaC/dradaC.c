/* ######################################################################################### */
/* #                                     Introductions                                     # */
/* ######################################################################################### */
void nom(char nom[]) {
  printf("Mes nom est %s. ", nom);
}

void qui(char buttai[]) {
  printf("C'est un/une %s. ", buttai);
}

void temps(char c[]) {
  printf("Le temp est %s", c);
}

void fukin(char d[]) {
  printf("Je suis en le voisinage de %s", d);
}

void motif(char e[]) {
  printf("Mes raison pour ce est %s", e);
}

void hono(char f[]) {
  printf("Mois methode pour le fabrication mes objectifs est %s", f);
}

void jiko(char a[], char b[], char c[]) {
  printf("Vous avoir damande moi %s a propos %s par %s.", a, b, c);
}

void ninom(char a[]) {
  printf("Mes nom est ne %s", a);
}

void nibuttai(char b[]) {
  printf("C'est non un/une %s", b);
}

void netemps(char c[]) {
  printf("Le temp est ne %s", c);
}

void nifukin(char d[]) {
  printf("Je suis ne en le voisinage de %s", d);
}

void nemotif(char e[]) {
  printf("Mes raison pour ce est ne %s", e);
}

void nihono(char f[]) {
  printf("Mois methode pour le fabrication mes objectifs est ne %s", f);
}

// ## Unite specific people at a time and place
void unir(char a[], char b[], char c[]) {
  printf("Je avoir unif avec %s avec %s a %s.", a, b, c);
}

void genkei(char a[]) {
  printf("Je suis un etudiant a propos %s", a);
}

void musee_comprime(char a[]) {
  printf("cette musee comprime %s", a);
}

// That is a black expanse.
void noremodei(char a[]) {
  printf("Cette %s est noermodeios.", a);
}

//## Disunification
void neunir(char a[], char b[], char c[]) {
  printf("Je ne avoir unif avec %s avec %s a %s.", a, b, c);
}

void nijiko(char a[], char b[], char c[]) {
  printf("Vous ne avoir damande moi %s a propos %s par %s.", a, b, c);
}

void nigenkei(char a[]) {
  printf("Je suis ne un etudiant a propos %s", a);
}

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

void express(char phrase_one[], char phrase_two[]) {
  printf("%s%s", phrase_one, phrase_two);
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
/* #                               French Contrastive Logic                                # */
/* ######################################################################################### */
void cette(char noun[], char adjective[]) {
  printf("Cette %s c'est %s.", noun, adjective);
} 

void maisette(char noun[], char adjective[]) {
  printf("Mais cette %s c'est %s.", noun, adjective);
} 

void sinon(char noun[], char adj_une[], char adj_deux[], char adj_trois[]) {
  printf("Sinon n'est %s ne %s ou %s, mais c'est %s.", noun, adj_une, adj_deux, adj_trois);
}

void necette(char noun[], char adjective[]) {
  printf("Cette %s n'est %s.", noun, adjective);
} 

void nemaisette(char noun[], char adjective[]) {
  printf("Mais cette %s n'est %s.", noun, adjective);
} 

void nesinon(char noun[], char adj_une[], char adj_deux[], char adj_trois[]) {
  printf("Sinon c'est %s ne %s ou %s, mais n'est %s.", noun, adj_une, adj_deux, adj_trois);
} 

/* ######################################################################################### */
/* #                           Negative Constraint Satisfaction                            # */
/* ######################################################################################### */
void ne(char first_noun[], char second_noun[]) {
  printf("Ne %s our %s, ", first_noun, second_noun);
}

void mais(char third_noun[]) {
  printf("%s.\n", third_noun);
}

void nai(char first_noun[], char second_noun[]) {
  printf("Ne %s our %s, ", first_noun, second_noun);
}

void shikashi(char third_noun[]) {
  printf("%s.\n", third_noun);
}

/* ################################################################################################ */
/* #                                Conlang Specific Functionality                                # */
/* ################################################################################################ */
void yumemoire(char agent[], char location[]) {
  printf("%s has been transported to %s.", agent, location);
}

void posedonokitano(char agent[], char enemy[]) {
  printf("%s utilisent le posedonokitano et coupe le %s.", agent, enemy);
}

void sanadforutese(char sender[], char reciever[]) {
  printf("%s encrivant un lettre pour %s.", sender, reciever);
}

void yokenozen(char agent[], char location[]) {
  printf("%s est en %s.", agent, location);
}

void hauntecabine(char location[], char hante[]) {
  printf("%s est hante par %s.", location, hante);
}

/* ######################################################################################### */
/* #                            Machine Learning Functionality                             # */
/* ######################################################################################### */
void hlim(char title[], char symbolique_une[], char numot_une[], char symbolique_deux[], char numot_deux[], char symbolique_trois[], char numot_trois[]) {
  printf("(encrireln %s)\n", title);
  printf("(hlim 2 %s %s %s %s %s %s)\n", symbolique_une, numot_une, symbolique_deux, numot_deux, symbolique_trois, numot_trois);
  printf("(espace)\n");
}
