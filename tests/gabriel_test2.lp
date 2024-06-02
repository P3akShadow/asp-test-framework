    %%% too many tasks for available time
%    instance:

    sol(1..3). 
    %%
    astronaut(alice, spacewalk).  astronaut(bob, maintenance). 
    astronaut(charlie, research1). astronaut(alice, communication).
    astronaut(bob, communication). astronaut(alice, research2).
    astronaut(bob, research3). astronaut(charlie, documentation).
    astronaut(charlie, simulation).
    %%
    duty_cycle(1, 8).  duty_cycle(2, 10).  duty_cycle(3, 10).
    %%
    task(spacewalk, 5). task(maintenance, 10).
    task(research1, 10).  task(communication, 10).
    task(research2, 10). task(research3, 10).
    task(documentation, 10).  task(simulation, 10).
    %%
    prec(research1, research2). prec(research2, research3).
    prec(research3, documentation).
    
    %%%
    #show assignment/3.
