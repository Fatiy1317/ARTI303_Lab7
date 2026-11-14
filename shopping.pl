
% ARTI 303 - Lab 7 - Part 1
% Shopping List Program

main :-
    InitialBasket = [bread, milk, eggs, cheese, apples],
    shopping_menu(InitialBasket).

shopping_menu(Basket) :-
    nl,
    write('===== Shopping List Menu ====='), nl,
    write('d - Display all items'), nl,
    write('a - Add an item'), nl,
    write('e - Exit'), nl,
    write('Choose an option: '),
    read(Choice),
    process_choice(Choice, Basket).

process_choice(d, Basket) :-
    nl,
    write('Shopping basket:'), nl,
    display_items(Basket),
    shopping_menu(Basket).

process_choice(a, Basket) :-
    write('Enter the item to add: '),
    read(Item),
    NewBasket = [Item|Basket],
    write(Item), write(' was added.'), nl,
    shopping_menu(NewBasket).

process_choice(e, _) :-
    write('Goodbye!'), nl.

process_choice(_, Basket) :-
    write('Invalid choice. Please choose d, a, or e.'), nl,
    shopping_menu(Basket).

display_items([]) :-
    write('End of basket.'), nl.

display_items([Head|Tail]) :-
    write('- '), write(Head), nl,
    display_items(Tail).
