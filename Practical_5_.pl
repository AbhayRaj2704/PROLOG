
marks(abhay, 85).
marks(rahul, 72).
marks(aman, 45).
marks(priya, 30).
marks(rohit, 90).


% Find Topper

topper(Student):-
    marks(Student, Marks),
    Marks >= 80.

% Find Average Performer

average(Student):-
    marks(Student, Marks),
    Marks >= 50,
    Marks < 80.

% Find Failed Student

failed(Student):-
    marks(Student, Marks),
    Marks < 50.