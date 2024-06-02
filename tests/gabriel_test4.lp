    %%%
%    instance:

    sol(1..2). 
    %%
    astronaut(alice, spacewalk).  astronaut(bob, maintenance). 
    astronaut(charlie, research). astronaut(alice, communication).
    astronaut(bob, communication). astronaut(charlie, documentation).
    %%
    duty_cycle(1, 8).  duty_cycle(2, 8).
    %%
    task(spacewalk, 5). task(maintenance, 6).
    task(research, 3).  task(communication, 8).
    task(documentation, 8).
    %%
    prec(spacewalk, research).
    prec(research, documentation).
    
    %%%
    #show assignment/3.
