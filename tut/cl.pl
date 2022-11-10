funiture(sink, kitchen, 1).
funiture(chair, longue ,4).
funiture(bed, bedroom, 1).
funiture(cooker, kitchen, 1).
funiture(chair, kitchen, 4).
funiture(sofa, longue, 1).

% Find number of chairs in each room
% ?- funiture(chair, X, Y).
% find rooms that have four chairs
% ?- funiture(chair, X, 4).
% room with 4 chairs and a cooker
% ?- funiture(chair, X, 4), funiture(cooker, X, 1).
% list all the rooms without stating without items or numbers
% ?- funiture(_, X, _).