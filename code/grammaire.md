# Grammaire Projet Calculatrice

> LIST_EXPR ->  EXPR | EXPR return list_expr

> EXPR -> ARITHM | BOOL | var_integer | var_boolean| print | error | vide

>ARITHM -> ARITHM + ARITHM | ARITHM * ARITHM | ( ARITHM) | number | var_integer


> BOOL -> (BOOL) | non BOOL | ARITHM == ARITHM | BOOL et BOOL | BOOL or BOOL | ARITHM < ARITHM | var_boolean | true | false | BOOL + BOOL | BOOL * BOOL | BOOL == BOOL | BOOL < BOOL




Cas erreur :
 - VAR_BOOLEAN = INTEGER : V
 - VAR_INTEGER = BOOLEAN : V

 - BOOL + BOOL : V
 - ARITHM + BOOL : V 
 - BOOL + ARITHM : 
 
 - BOOL * BOOL : V
 - ARITHM * BOOL : V
 - BOOL * ARITHM : V

 - ARITHM ET ARITHM : V
 - ARITHM ET BOOL : V
 - BOOL ET ARITHM : V

 - ARITHM OU ARITHM : V
 - ARITHM OU BOOL : V
 - BOOL OU ARITHM : V

 - NON ARITHM : V

 - BOOL < BOOL : V
 - ARITHM < BOOL : V
 - BOOL < ARITHM : V

 - BOOLEAN == BOOLEAN : V
 - ARITHM == BOOL : V
 - BOOL == ARITHM : V






5+6*2
faux et non faux ou vrai
a=123
@b= vrai et non (faux ou vrai)
a+1<100 ou 10*5 == 2*a
@a=@b ou a<100+100
4+2*d


4 + faux
4 + faux

vrai * vrai
4 * vrai
vrai * 4 

4 et 4
4 et vrai
vrai et 4

4 ou 4
4 ou vrai
vrai ou 4

non 4

faux < faux
4 < faux
faux < 4

faux == faux
4 == faux
faux == 4
