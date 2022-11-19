6: RetType ->  VOID
33: Exp -> LPAREN Exp RPAREN
11: FormalDecl -> Type ID
9: FormalsList -> FormalDecl
8: Formals -> FormalsList
36: Exp -> Call
40: Exp -> TRUE
29: ExpList -> Exp COMMA ExpList
27: Call -> ID LPAREN RPAREN
19: Statement -> RETURN SC
22: Statement -> IF LPAREN Exp RPAREN Statement ELSE Statement
12: Statements -> Statement
4: FuncDecl -> RetType ID LPAREN Formals RPAREN LBRACE Statements RBRACE
6: RetType ->  VOID
7: Formals -> epsilon
31: Type -> BYTE
38: Exp -> NUM B
16: Statement -> Type ID ASSIGN Exp SC
12: Statements -> Statement
32: Type -> BOOL
39: Exp -> STRING
16: Statement -> Type ID ASSIGN Exp SC
13: Statements -> Statements Statement
36: Exp -> Call
36: Exp -> Call
46: Exp -> LPAREN Type RPAREN Exp
29: ExpList -> Exp COMMA ExpList
27: Call -> ID LPAREN RPAREN
19: Statement -> RETURN SC
13: Statements -> Statements Statement
31: Type -> BYTE
15: Statement -> Type ID SC
13: Statements -> Statements Statement
4: FuncDecl -> RetType ID LPAREN Formals RPAREN LBRACE Statements RBRACE
2: Funcs -> epsilon
3: Funcs -> FuncDecl Funcs
3: Funcs -> FuncDecl Funcs
1: Program -> Funcs
