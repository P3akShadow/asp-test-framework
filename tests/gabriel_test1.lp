    %%% many tasks, much time
%    instance:

    sol(1..5). 
    %%
    astronaut(alice, spacewalk).  astronaut(bob, maintenance). 
    astronaut(charlie, research1). astronaut(alice, communication).
    astronaut(bob, communication). astronaut(alice, research2).
    astronaut(bob, research3). astronaut(charlie, documentation).
    astronaut(charlie, simulation).
    %%
    duty_cycle(1, 8).  duty_cycle(2, 10).  duty_cycle(3, 10).
    duty_cycle(4, 10).  duty_cycle(5, 6).
    %%
    task(spacewalk, 5). task(maintenance, 6).
    task(research1, 3).  task(communication, 10).
    task(research2, 5). task(research3, 6).
    task(documentation, 4).  task(simulation, 10).
    %%
    prec(research1, research2). prec(research2, research3).
    prec(research3, documentation).
    
    %%%
    #show assignment/3.
