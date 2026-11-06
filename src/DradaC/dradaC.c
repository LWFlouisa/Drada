/* ######################################################################################### */
/* #                                     Introductions                                     # */
/* ######################################################################################### */
/* # This particular section I'm unsure whether I'm going to end up using for transpiling  # */
/* # and rather as a way of seeing aspects of the language can work in C.                  # */
/* ######################################################################################### */
void nom(char nom[]) {
  printf("Mes nom est %s. ", nom);
}

void buttai(char buttai[]) {
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
  printf("(encrire %s)", input);
}

void encrireln(char input[]) {
  printf("(encrireln %s)", input);
}

void pgram(char v[], char o[], char s[]) {
  printf("(parle_grammaire %s %s %s)", v, o, s);
}

void ntupe(char v[], char o[], char s[]) {
  printf("(nihongotupelo %s %s %s)", v, o, s);
}

void express(char phrase_one[], char phrase_two[]) {
  printf("(expression %s %s)", phrase_one, phrase_two);
}

/* ######################################################################################### */
/* #                            Transpilation Functions Below Here                         # */
/* ######################################################################################### */
/* # Here on out the purpose of this DSL will be primarily for transpiling to Awasunu      # */
/* # rather than operating directly within C itself. Mostly to offline some of the hosting # */
/* # until this can be self-compiled.                                                      # */
/* ######################################################################################### */

/* ######################################################################################### */
/* #                                       Word Order                                      # */
/* ######################################################################################### */
void osv(char o[], char s[], char v[]) {
  printf("(osv %s %s %s)", o, s, v);
}

void sov(char s[], char o[], char v[]) {
  printf("(sov %s %s %s)\n", s, o, v);
}

void vos(char v[], char o[], char s[]) {
  printf("(vos %s %s %s.)\n", v, o, s);
}

/* ######################################################################################### */
/* #                               French Contrastive Logic                                # */
/* ######################################################################################### */
void cette(char noun[], char adjective[]) {
  printf("(cette %s %s)\n", noun, adjective);
} 

void maisette(char noun[], char adjective[]) {
  printf("(maisette %s %s)\n", noun, adjective);
} 

void sinon(char noun[], char adj_une[], char adj_deux[], char adj_trois[]) {
  printf("(sinon %s %s %s %s)\n", noun, adj_une, adj_deux, adj_trois);
}

void necette(char noun[], char adjective[]) {
  printf("necette %s %s.\n", noun, adjective);
} 

void nemaisette(char noun[], char adjective[]) {
  printf("(nemaisette %s %s)\n", noun, adjective);
} 

void nesinon(char noun[], char adj_une[], char adj_deux[], char adj_trois[]) {
  printf("(sinon %s %s %s %s)\n", noun, adj_une, adj_deux, adj_trois);
} 

/* ######################################################################################### */
/* #                           Negative Constraint Satisfaction                            # */
/* ######################################################################################### */
void ne(char first_noun[], char second_noun[]) {
  printf("(ne %s %s)\n", first_noun, second_noun);
}

void mais(char third_noun[]) {
  printf("(mais %s)\n", third_noun);
}

//void nai(char first_noun[], char second_noun[]) {
//  printf("(nai %s %s)", first_noun, second_noun);
//}

//void shikashi(char third_noun[]) {
//  printf("(shikashi %s)\n", third_noun);
//}

/* ################################################################################################ */
/* #                                Conlang Specific Functionality                                # */
/* ################################################################################################ */
void yumemoire(char agent[], char location[]) {
  printf("(yumemoire %s %s)", agent, location);
}

void posedonokitano(char agent[], char enemy[]) {
  printf("(posedonokitano %s %s)", agent, enemy);
}

void sanadforutese(char sender[], char reciever[]) {
  printf("(sanadforutese %s %s)", sender, reciever);
}

void yokenozen(char agent[], char location[]) {
  printf("(yokenozen %s %s)", agent, location);
}

void hauntecabine(char location[], char hante[]) {
  printf("(hauntecabine %s %s)", location, hante);
}

/* ######################################################################################### */
/* #                                Transpiling To Awasunu                                 # */
/* ######################################################################################### */
void obelisk_one(char old_data[]) {
  printf("(obelisk1 %s)", old_data);
  printf("(scash)");
}

void obelisk_two(char first_datapoint[], char second_datapoint[]) {
  printf("(obelisk1 %s %s)", first_datapoint, second_datapoint);
  printf("(scash)");
}

void obelisk_tre(char first_datapoint[], char second_datapoint[], char third_datapoint[]) {
  printf("(obelisk1 %s %s %s)", first_datapoint, second_datapoint, third_datapoint);
  printf("(scash)");
}

void obelisk_fro(char first_datapoint[], char second_datapoint[], char third_datapoint[], char fourth_datapoint[]) {
  printf("(obelisk1 %s %s %s %s)", first_datapoint, second_datapoint, third_datapoint, fourth_datapoint);
  printf("(scash)");
}

/* ######################################################################################### */
/* #                            Machine Learning Functionality                             # */
/* ######################################################################################### */
void hlim(char title[], char symbolique_une[], char numot_une[], char symbolique_deux[], char numot_deux[], char symbolique_trois[], char numot_trois[]) {
  printf("(encrireln %s)\n", title);
  printf("(hlim 2 %s %s %s %s %s %s)\n", symbolique_une, numot_une, symbolique_deux, numot_deux, symbolique_trois, numot_trois);
  printf("(espace)\n");
}
