sol(1..3).
astronaut(a, t1). astronaut(a, t2). 
astronaut(b, t1). astronaut(b, t3). 
astronaut(b, t4). astronaut(b, t5).
astronaut(c, t3). astronaut(b, t5).

task(t1, 3). 
task(t2, 5). 
task(t3, 7). 
task(t4, 5). 
task(t5, 4). 

duty_cycle(1,8).
duty_cycle(2,10).
duty_cycle(3,9).

prec(t1, t3).
prec(t2, t4).
prec(t4, t5).

#show assignment/3.
