loves(romeo, juliet).

loves(juliet, romeo) :- loves(romeo, juliet). 

happy(albert).
happy(alice).
happy(bill).
happy(bob).
with_albert(alice).


runs(albert) :- happy(albert).


dances(alice) :- with_albert(alice), happy(alice).

does_alice_dance :- dances(alice), write('Alice Dances if she is happy and with albert').


parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).


parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).


get_grand_child :- parent(albert, X), parent(X, Y), 
                    write('Alberts grand child is '), 
                    write(Y), nl.


get_grand_parent :- 
    parent(X, carl), 
    parent(X, charlie),
                    format('~w ~s grandparent ~n', [X, 'is a']). 


brother(bob, bil).

get_brother:-
    parent(X, carl), 
    brother(X, Y),
                  write(X), nl,
                    write(Y), nl.
            
 

blushes(X) :- human(X).
human(kevin).


stabs(tybalt, mercutio, sword).
hates(romeo, X) :- stabs(X, mercutio, sword).

% FUNCTORS / STRUCTURES
owns(alice, pet(cat, olive)).

customer(steve, taylor, 123.88).
customer(alisa, taylor, 5.90).

get_customer_bal(Fname, Lname) :-
        customer(Fname, Lname, Bal), 
        format('~w owes us $~2f ~n', [Lname, Bal]).


vertical(line(X, Y), point(X, Y2)).
horizontal(line(X, Y), point(X2, Y)).