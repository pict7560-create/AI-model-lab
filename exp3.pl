
% Facts about books
book(python).
book(java).
book(ai).
book(database).

% Facts about authors
author(python, guido).
author(java, james_gosling).
author(ai, richard_bellman).
author(database, codd).

% Facts about availability
availability(python, yes).
availability(java, no).
availability(ai, yes).
availability(database, yes).

% Rule to find the author
book_author(Book, Author) :-
    author(Book, Author).

% Rule to check availability
book_available(Book) :-
    availability(Book, yes).

% Rule to check unavailability
book_unavailable(Book) :-
    availability(Book, no).




