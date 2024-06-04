sol(1..3).
astronaut(a, 1). astronaut(a, 2). 
astronaut(b, 2). astronaut(b, 3). 
astronaut(c, 3). astronaut(c, 4).
astronaut(d, 4). astronaut(d, 5).
astronaut(d, 6). astronaut(d, 7).
astronaut(d, 8). astronaut(d, 9).
astronaut(a, 8). astronaut(d, 9).
astronaut(a, 10). astronaut(d, 11).

task(1, 6). 
task(2, 5). 
task(3, 7). 
task(4, 3). 
task(5, 3). 
task(6, 3). 
task(7, 3). 
task(8, 3). 
task(9, 3). 
task(10, 3). 
task(11, 3). 

duty_cycle(1,7).
duty_cycle(2,7).
duty_cycle(3,12).

prec(T1, T2) :- task(T1, _), task(T2, _), T1 < T2.

#show assignment/3.
