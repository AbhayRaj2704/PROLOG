%Create a simple Knowledge Base using facts, predicates, clauses,
% and goals (Student-Course Database)

%Experiment 1: Write a basic Visual Prolog program to define a simple Knowledge Base
% of facts (e.g., student-course enrollment or a "likes" relationship database) to understand
%  the core structure of Domains, Predicates, Clauses, and Goals.


% Student Course Knowledge Base


student(abhay, java).
student(rahul, python).
student(aman, database).
student(priya, java).
student(priya, python).

% Find course of a student

find_course(Student, Course):-
    student(Student, Course).

% Find students enrolled in a course

find_student(Course, Student):-
    student(Student, Course).