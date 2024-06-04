sol(1..5).
astronaut(a, t1). astronaut(a, t2). 
astronaut(b, t1). astronaut(b, t3). 
astronaut(b, t4). astronaut(b, t5).
astronaut(c, t3). astronaut(b, t5).
astronaut(c, t6). astronaut(b, t6).
astronaut(c, t7). astronaut(b, t7).

task(t1, 6). 
task(t2, 5). 
task(t3, 7). 
task(t4, 5). 
task(t5, 4). 
task(t6, 10). 
task(t7, 15). 

duty_cycle(1,8).
duty_cycle(2,10).
duty_cycle(3,5).
duty_cycle(4,20).
duty_cycle(5,10).

prec(t1, t3).
prec(t2, t4).
prec(t4, t5).
prec(t3, t7).
prec(t7, T) :- task(T, N), not prec(T, _).

#show assignment/3.
