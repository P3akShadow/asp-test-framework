    %%% does not have enough tasks to assign one to every astronaut
%    instance:

    sol(1..3). 
    %%
    astronaut(alice, spacewalk).  astronaut(bob, maintenance). 
    astronaut(charlie, research). astronaut(alice, communication).
    astronaut(bob, communication). astronaut(david, communication).
    astronaut(emile, communication).
    %%
    duty_cycle(1, 8).  duty_cycle(2, 10).  duty_cycle(3, 10).
    %%
    task(spacewalk, 5). task(maintenance, 6).
    task(research, 3).  task(communication, 10).
    %%
    prec(spacewalk, research).
    
    %%%
    #show assignment/3.
