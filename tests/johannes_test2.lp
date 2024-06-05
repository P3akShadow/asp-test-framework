% satisfiable, expected # of solutions = 3! = 6

sol(1..4).

astronaut(alice, task1).
astronaut(bob, task2).
astronaut(charlie, task3).
astronaut(dave, task4).

task(task1, 5).
task(task2, 5).
task(task3, 5).
task(task4, 5).

duty_cycle(1, 10).
duty_cycle(2, 10).
duty_cycle(3, 10).
duty_cycle(4, 10).

prec(task1, task2).
prec(task1, task3).
prec(task1, task4).