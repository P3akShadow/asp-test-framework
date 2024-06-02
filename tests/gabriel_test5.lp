    %%% does not have enough tasks to assign one to every sol
%    instance:

    sol(1..5). 
    %%
    astronaut(alice, spacewalk).  astronaut(bob, maintenance). 
    astronaut(charlie, research). astronaut(alice, communication).
    astronaut(bob, communication).
    %%
    duty_cycle(1, 8).  duty_cycle(2, 10).  duty_cycle(3, 10).
    duty_cycle(4, 10).  duty_cycle(5, 10).
    %%
    task(spacewalk, 5). task(maintenance, 6).
    task(research, 3).  task(communication, 10).
    %%
    prec(spacewalk, research).
    
    %%%
    #show assignment/3.
