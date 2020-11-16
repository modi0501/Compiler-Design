

alpha [A-Za-z]
digit [0-9]

%%

[ \t\n]                             
not		                return NOT;
select                  return SELECT;
from                    return FROM;
where                   return WHERE;
or                      return OR;
and                     return AND;
{digit}+                return NUM;
"<"		                return '<';
">"		                return '>';
"="		                return '=';
"("		                return '(';
")"		                return ')';
"*"		                return '*';
","		                return ',';
"<="                    return LE;
">="                    return GE;
"=="                    return EQ;
"!="                    return NE;
sum		                return SUM;
table  	                return TABLE;
drop  	                return DROP;
create  	            return CREATE;
insert	                return INSERT;
into	                return INTO;
values	                return VALUES;
operator	            return OPERATOR;
update                  return UPDATE;
set                     return SET;
{alpha}({alpha}|{digit})* return ID;
.                       return yytext[0];

%%
