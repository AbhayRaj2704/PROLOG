%Develop a timetable database and answer queries regarding faculty, subjects, and classrooms
%Experiment 4: Develop a Visual Prolog program to represent a College Timetable 
%Knowledge Base and answer queries about faculty, subjects, and classrooms.

% College Timetable Knowledge Base

timetable(monday, '9:00', python, shrishti, room11).
timetable(monday, '10:00', ai, aradhna, room19).
timetable(tuesday, '9:00', python, shrishti, room13).
timetable(tuesday, '10:00', ai, aradhna, room11).
timetable(wednesday, '9:00', ai, sahu, room13).
timetable(wednesday, '10:00', prolog, aradhna, lab3).

% Find faculty for a class

find_faculty(Subject, Faculty):-
    timetable(_, _, Subject, Faculty, _).

% Find subject taught by faculty

find_subject(Faculty, Subject):-
    timetable(_, _, Subject, Faculty, _).

% Find classroom of a subject

find_classroom(Subject, Room):-
    timetable(_, _, Subject, _, Room).

% Find complete class details

find_class(Day, Time, Subject, Faculty, Room):-
    timetable(Day, Time, Subject, Faculty, Room).