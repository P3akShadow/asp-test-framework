sol(1..2).
astronaut(alice, spacewalk). astronaut(alice, communication). 
astronaut(bob, maintenance). astronaut(bob, communication). 
astronaut(bob, research).

task(spacewalk, 5). task(maintenance, 6).
task(research, 3). task(communication, 10).

duty_cycle(1,8). duty_cycle(2,10).

prec(spacewalk, research). 
prec(spacewalk, maintenance).
prec(maintenance, research).

#show assignment/3.
