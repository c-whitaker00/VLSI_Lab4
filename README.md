# VLSI_Lab4

This is just a light controller state machine. In this case, there is an "A" street and "B" street intersection. Each street has traffic sensors, which detect the 
presence of vehicles approaching or stopped at the intersection. "A" street is a main street and has a green light until a car approaches on "B". Then the light changes, 
and "B" has a green light. At the end of 50 seconds, the lights change back unless there is a car on "B" street and none on "A", in which case the "B" cycle is extended
10 more seconds. When "A" is green, it remains green at least 60 seconds, and then the lights change only when a car approaches on "B".
