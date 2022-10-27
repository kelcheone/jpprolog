
friends(ram, hari).
friends(hari, ravan).

friendsoffriends(X,Y):- friends(X, Commonperson),friends(Commonperson,Y).
