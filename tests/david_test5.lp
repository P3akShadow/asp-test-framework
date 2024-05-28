sol(1..6).
astronaut(a, t1). astronaut(a, t2). 
astronaut(b, t1). astronaut(b, t4).
astronaut(c, t3). astronaut(c, t5).
astronaut(c, t6). astronaut(c, t7).

task(t1, 3). 
task(t2, 5). 
task(t3, 7). 
task(t4, 5). 
task(t5, 6). 
task(t6, 6). 
task(t7, 10). 

duty_cycle(1,4).
duty_cycle(2,5).
duty_cycle(3,2).
duty_cycle(4,7).
duty_cycle(5,9).
duty_cycle(6,10).

prec(t1, t3).
prec(t3, t2).
prec(t3, t4).
prec(t3, t6).
%prec(t6, t3).

#show assignment/3.
