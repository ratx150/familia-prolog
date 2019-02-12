padrede('mariacarmen','nicolas').
padrede('mariacarmen','daniel').
padrede('gerardo','nicolas').
padrede('gerardo','daniel').
padrede('mercedes','gerardo').
padrede('alberto','gerardo').
padrede('mercedes','carlos').
padrede('alberto','carlos').
padrede('mercedes','edgar').
padrede('alberto','edgar').
padrede('mercedes','ricardo').
padrede('alberto','ricardo').
padrede('mercedes','mariaconstansa').
padrede('alberto','mariaconstansa').
padrede('ricardo','juancho').
padrede('rodrigo','andres').
padrede('mariaconstansa','andres').
padrede('rodrigo','santiago').
padrede('mariaconstansa','santiago').
padrede('maria','mariacarmen').
padrede('luiz','mariacarmen').
padrede('maria','luizf').
padrede('luiz','luizf').
padrede('maria','dario').
padrede('luiz','dario').
padrede('luizf','felipe').
padrede('yanet','felipe').
padrede('dario','luna').
padrede('marta','luna').

hijode(A,B) :- padrede(B,A).
abuelode(A,B) :- padrede(A,C), padrede(C,B).
hermanode(A,B) :- padrede(C,A), padrede(C,B), A \== B.
familiarde(A,B) :- padrede(A,B).
familiarde(A,B) :- abuelode(A,B).
familiarde(A,B) :- hermanode(A,B).
escasado(A,C) :- hijode(B,A), hijode(B,C), C \== A.
escasado(A) :- hijode(B,A), padrede(C,B), C \== A.
esfeliz(A):- not(escasado(A)).
tiode(A,B) :- hermanode(A,C),padrede(C,B).
primode(A,B) :-padrede(C,A),tiode(C,B).
sobrinode(A,B) :-tiode(B,A).
nietode(A,B) :-abuelode(B,A).
