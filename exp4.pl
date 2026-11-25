
% Student facts
% student(Name, Mathematics, Physics, ComputerScience).

student(aman, 85, 75, 90).
student(rahul, 45, 60, 55).
student(priya, 80, 85, 88).
student(kiran, 55, 45, 70).

% Rule to check admission eligibility
eligible(Name) :-
    student(Name, Math, Physics, CS),
    Math >= 50,
    Physics >= 50,
    CS >= 50.

% Rule to identify ineligible students
not_eligible(Name) :-
    student(Name, Math, Physics, CS),
    (Math < 50;
     Physics < 50;
     CS < 50).

% Rule to display admission status
admission_status(Name, eligible) :-
    eligible(Name).

admission_status(Name, not_eligible) :-
    not_eligible(Name).
