build : parser test
	java parser < test


parser : Yylex.java parser.java
	javac Yylex.java parser.java sym.java

Yylex.java : regex.lex
	jflex regex.lex

parser.java : analyseur.cup
	cup analyseur.cup
	
clean : 
	rm *.class Yylex.java sym.java parser.java

