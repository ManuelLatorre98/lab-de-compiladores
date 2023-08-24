Copy code
%option noyywrap

%%
"<"[^>]*">"       { /* Ignorar las etiquetas HTML */ }
[^<>\n]+      { printf("%s", yytext); }
\n            { putchar('\n');}
%%

int main() {
    yylex();
    return 0;
}
