%Implement arithmetic operations, Factorial, and Fibonacci Series using recursion
%Experiment 2: Implement a Prolog program to demonstrate basic arithmetic operations,
% finding the Factorial of a number, and generating the Fibonacci series.

% Basic Arithmetic Operations
add(A, B, Result):-
    Result = A + B.

subtract(A, B, Result):-
    Result = A - B.

multiply(A, B, Result):-
    Result = A * B.

divide(A, B, Result):-
    Result = A / B.

% Factorial of a number
factorial(0, 1).

factorial(N, Result):-
    N > 0,
    N1 = N - 1,
    factorial(N1, R),
    Result = N * R.

% Fibonacci Series

fibonacci(0, 0).

fibonacci(1, 1).

fibonacci(N, Result):-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, R1),
    fibonacci(N2, R2),
    Result is R1 + R2.