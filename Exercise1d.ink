/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR Time = "" 




-> seashore

== seashore ==
You are sitting on the beach. 
~ advance_time()
It's { Time }

+ [Stroll down the beach] -> beach2
+ {Time == "sunset"} [Enjoy the sunset] -> sunset
+ [Wait and take the scenery] -> seashore
-> DONE

== beach2 ==
~ advance_time() 
This is further down the beach. 
It's { Time }

* {Time == "noon."} [Pick up some seeshells] -> shells
+ {Time != "sunset." && Time != "evening."}[Swim in the sea] -> swimming
+ [Continue walking and see what else the beach holds] -> creature_encounter
+ [Move back up the beach] -> seashore

== shells ==
~ advance_time() 
You pick up the shells.
It's { Time }

+ [Move back up the beach] -> beach2

== swimming ==
{Time == "sunset.": It is dangerous to swim in the sea during night. |You jump into the water. The cool waves are refreshing, and you spot small fish darting around. You feels a sense of peace and freedom.} 
~ advance_time()
It's { Time }

+ {Time != "sunset."} [Swim again] -> swimming
+ [Go back up to the beach] -> beach2

== creature_encounter ==
{&While exploring further, you spots a small crab scuttling across the sand. Curious, you crouch down to observe it. The crab pauses, as if noticing them, before darting into a small hole in the sand. |Further down the beach, you notice a disturbance near the waterline. Upon closer inspection, you see a small sea turtle digging in the sand, creating a nest. The turtle appears calm, undisturbed by the world around it. |As you walk along the beach, you come across a cluster of coconuts lying under a palm tree. Some are cracked open, revealing fresh coconut water and soft white flesh.}
~ advance_time()
It's { Time }

+ [Hanging around] -> creature_encounter
+ [Stroll back to the seashell spot] -> seashore

== sunset ==
The day begins to wind down, and the sun sets over the horizon, painting the sky with brilliant colors. 
~ advance_time()
It's { Time }

+ [Back to the beach] -> seashore








== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 3:
            ~ time = 0
    }    
    
    {
        - time == 0:
            ~ Time = "morning."
            
        - time == 1:
            ~ Time = "noon."
            
        - time == 2:
            ~ Time = "sunset."
            
        - time == 3:
            ~ Time = "evening."
    }
    
    
    
    
    
    
    
    
    
    
    
