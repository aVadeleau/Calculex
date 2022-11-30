// Spécification JFlex
import java_cup.runtime.Symbol;

%%
%unicode
%cup
%line
%column

ADD = "+"
MULTIPLY = "*"
BRACKETL = "("
BRACKETR = ")"
AFFECTATION = "="
NUMBER = [0-9]*
TRUE = "vrai"|"VRAI"
FALSE = "faux"|"FAUX"
INFERIOR = "<"
EQUALITY = "=="
AND = "et"|"ET"
OR = "ou"|"OU"
NO = "non"|"NON"
VAR_INTEGER = [_A-Za-z]+
VAR_BOOLEAN = @[_A-Za-z]+





%%

{ADD} + { return new Symbol(sym.ADD);}
{MULTIPLY} + { return new Symbol(sym.MULTIPLY);}
{BRACKETL} + { return new Symbol(sym.BRACKETL);}
{BRACKETR} + { return new Symbol(sym.BRACKETR);}
{NUMBER} + { return new Symbol(sym.NUMBER, new Integer(yytext()));}
{TRUE} + {return new Symbol(sym.TRUE);}
{FALSE} + {return new Symbol(sym.FALSE);}
{INFERIOR} + {return new Symbol(sym.INFERIOR);}
{EQUALITY} + {return new Symbol(sym.EQUALITY);}
{AFFECTATION} + {return new Symbol(sym.AFFECTATION);}
{AND} + {return new Symbol(sym.AND);}
{OR} + {return new Symbol(sym.OR);}
{NO} + {return new Symbol(sym.NO);}
"PRINT" + {return new Symbol(sym.PRINT);}
{VAR_INTEGER} + {return new Symbol(sym.VAR_INTEGER, new String(yytext()));}
{VAR_BOOLEAN} + {return new Symbol(sym.VAR_BOOLEAN, new String(yytext()));}



" " {} // espace
\n {return new Symbol(sym.RETURN);} // consommation d'un passage à la ligne
. {return new Symbol(sym.ERROR, new String(yytext()));} // ne rien faire