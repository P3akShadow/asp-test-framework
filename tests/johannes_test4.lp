% satisfiable, expected # of solutions = 4^3 = 64

sol(1..4).

astronaut(alice, task1).
astronaut(alice, task5).
astronaut(alice, task6).
astronaut(alice, task7).
astronaut(alice, task8).
astronaut(bob, task2).
astronaut(charlie, task3).
astronaut(dave, task4).

task(task1, 5).
task(task2, 5).
task(task3, 5).
task(task4, 5).
task(task5, 5).
task(task6, 5).
task(task7, 5).
task(task8, 5).

duty_cycle(1, 10).
duty_cycle(2, 5).
duty_cycle(3, 5).
duty_cycle(4, 5).

prec(task1, task5).
prec(task5, task6).
prec(task6, task7).
prec(task7, task8).

#show assignment/3.