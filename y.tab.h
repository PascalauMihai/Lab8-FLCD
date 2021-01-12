/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    IDENTIFIER = 258,
    CONSTANT = 259,
    MAINFUNCTION = 260,
    INTEGER = 261,
    CHAR = 262,
    STRING = 263,
    READFROMKEYBOARD = 264,
    WRITETOKEYBOARD = 265,
    AND = 266,
    OR = 267,
    LESSTHAN = 268,
    MORETHAN = 269,
    LESSOREQUAL = 270,
    MOREOREQUAL = 271,
    ISEQUAL = 272,
    NOTEQUAL = 273,
    RETURN = 274,
    OPENCURLYBRACKET = 275,
    CLOSECURLYBRACKET = 276,
    OPENROUNDBRACKET = 277,
    CLOSEROUNDBRACKET = 278,
    OPENSQUAREBRACKET = 279,
    CLOSESQUAREBRACKET = 280,
    QUOTATION = 281,
    COMMA = 282,
    APOSTROPHE = 283,
    SEMICOLON = 284,
    SPACE = 285,
    IF = 286,
    ELSE = 287,
    WHILE = 288,
    READSIGN = 289,
    WRITESIGN = 290,
    PLUS = 291,
    MINUS = 292,
    MULTIPLICATION = 293,
    DIVISION = 294,
    MODULO = 295,
    EQUALS = 296
  };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define CONSTANT 259
#define MAINFUNCTION 260
#define INTEGER 261
#define CHAR 262
#define STRING 263
#define READFROMKEYBOARD 264
#define WRITETOKEYBOARD 265
#define AND 266
#define OR 267
#define LESSTHAN 268
#define MORETHAN 269
#define LESSOREQUAL 270
#define MOREOREQUAL 271
#define ISEQUAL 272
#define NOTEQUAL 273
#define RETURN 274
#define OPENCURLYBRACKET 275
#define CLOSECURLYBRACKET 276
#define OPENROUNDBRACKET 277
#define CLOSEROUNDBRACKET 278
#define OPENSQUAREBRACKET 279
#define CLOSESQUAREBRACKET 280
#define QUOTATION 281
#define COMMA 282
#define APOSTROPHE 283
#define SEMICOLON 284
#define SPACE 285
#define IF 286
#define ELSE 287
#define WHILE 288
#define READSIGN 289
#define WRITESIGN 290
#define PLUS 291
#define MINUS 292
#define MULTIPLICATION 293
#define DIVISION 294
#define MODULO 295
#define EQUALS 296

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
