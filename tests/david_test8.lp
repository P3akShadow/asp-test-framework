sol(1..5).
astronaut(a, 1). astronaut(a, 2). 
astronaut(b, 2). astronaut(b, 3). 
astronaut(c, 3). astronaut(c, 4).
astronaut(d, 4). astronaut(d, 5).
astronaut(d, 6). astronaut(d, 7).
astronaut(d, 8). astronaut(d, 9).
astronaut(a, 8). astronaut(d, 9).
astronaut(a, 10). astronaut(d, 11).
astronaut(a, 12). astronaut(d, 13).
astronaut(b, 14). astronaut(b, 15).
astronaut(b, 16). astronaut(b, 17).

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
task(12, 3). 
task(13, 3). 
task(14, 3). 
task(15, 3). 
task(16, 3). 
task(17, 3). 

duty_cycle(1,7).
duty_cycle(2,7).
duty_cycle(3,9).
duty_cycle(4,9).
duty_cycle(5,6).

prec(T1, T2) :- task(T1, _), task(T2, _), T1 < T2.

#show assignment/3.
