---
layout:     post
title:      Behavioral Prototyping
date:       2016-01-28 11:50:13
summary:    A group project designed to prototype a in car gesture control system in a short period of time with limited resources. The following study and documentation was done in collaboration with Yitao Wang and Rickie Xie.
categories: 
- prototyping
- process
---

<p class='regular' markdown='1'>
	A group project designed to prototype a in car gesture control system in a short period of time with limited resources. I participated in ideation and concept development, created the "driving simulator," and served as record-keeper during the test. The following study and documentation was done in collaboration with Yitao Wang and Rickie Xie.
</p>

<p class="center"> * * * </p>


### Notes on Behavioral Prototyping
Behavioral prototyping, or the Wizard of Oz experiment, is commonly used in the design process to evaluate a perceived autonomous computer system, operated by a human behind the scene. As part of the iterative design process, this technique enables designers to build a relatively inexpensive prototype with limited resources. As a result, we can evaluate a system effectively with low to mixed-fidelity prototype by presenting the interaction in the desired context.


## Part 1: Background  

### Scenario
The goal of our experiment was to simulate a driving experience in which a driver interacts with an in-car music entertainment system (or “infotainment”) via hand gestures. We created a 3D gesture user interface for the vehicle audio component of the system. The interface included a set of simple gesture interactions enabling the driver to focus their attention on the road.  

We decided to focus on what we estimated to be the most commonly used actions in streaming music playback: start, stop, pause, next song, previous song, volume up, and volume down. We considered including liking, disliking and saving a song to the music library, yet ultimately decided that this would risk over complicating the study, added difficulty for our “Wizard,” and increased the chance of error.  

Additionally, we considered allowing the user to switch between play modes such as shuffling or repeating their playlist or a single, but we determined that this would require the listener to have a pre-existing relationship with the music they were listening to. This was something that we were unable to account for in this study.

### Gestural Interface
We created these gestures based on the traditional 2D touch interface for a media player as well as the current practice of industry leaders such as BMW and Google. Since a gesture-based interface allows the user to simulate the experience of interacting with a physical object intuitively and naturally, we revised our gestures to represent the physical interaction. For instance, we used the action of swiping from right to left to augment the reality when a user is physically pushing an item to the previous position of a queue.

![Gestural Interface Language](/images/blog/wizard-of-oz/gesture-language.png)
 

## Part 2: Test Setup

#### Infotainment System
Due to safety and time constraints, we did not have access to a real car or a legitimate driving simulator. Since we still wanted to test gestures related to a driving experience, we created a rudimentary driving simulator at a library workspace. Our initial plan was to have the participants play a racing game to distract them and better simulate a driving experience. We looked into several options for games, but because we did not have a gaming console, we were confined to finding a free driving simulator or racing game for Apple’s Operating System. Most of the games we found were too complicated and would have required the user’s full attention. In addition, all of the racing games we found required two hands to play, one for direction control and the other for a throttle. This would have prevented the user from having a free hand for the gesture control system.


#### Simulator
The simulator consisted of a large TV displaying first person video of a car driving, a fake wheel and infotainment dashboard, and two independent Bluetooth speakers that were hidden within the “car”. One speaker was paired with the computer playing the driving video, and played ambient sounds of driving. This audio was run throughout the entire test. The other speaker was paired with a different computer with Spotify installed, and was used to play music and was controlled by our “Wizard of Oz.”.

#### Planning
![Planning the simulator and car](/images/blog/wizard-of-oz/00-planning.JPG)

#### Layout
![Room Diagram](/images/blog/wizard-of-oz/room-diagram.jpg)

#### The "Car"

The “car” included a fake yet rotatable driver’s wheel, as well as a center console with fake climate control and stereo.I built it using two cardboard boxes, a frisbee glued to the lid of a plastic jar with a screw-on lid, construction paper with a hand drawn UI, duct tape, gorilla glue, and black spray paint. A GoPro was mounted inside the “car” that pointed at the participant. The participant was told that the GoPro was connected to a computer via wifi which was capturing and processing their gestures. In actuality, the camera was just used to get another perspective of the participant to better aid the wizard.

#### Beginnings of the steering column
![Peanut Butter wheel](/images/blog/wizard-of-oz/01-peanut.jpg)

#### Beginnings of the dashboard
![Room Diagram](/images/blog/wizard-of-oz/02-box.jpg)

#### Beginnings of the wheel
![Room Diagram](/images/blog/wizard-of-oz/03-frisbee.jpg)

#### Mounted & painted wheel
![Room Diagram](/images/blog/wizard-of-oz/04-wheel.jpg)

## The Tasks

We created a sequence of tasks that allowed the participants to interact with the system using all designed gestures. This included learning and using the gestures. However, as we rehearsed the tasks by acting as either “the Dorothy” or “the Wizard” of our scenario, we quickly realized that we needed to add a stage for calibrating the system. By running through this fake calibration system, we hoped to further the illusion that this was in fact a computer system and not controlled by a human. We utilized text to speech features in Microsoft Excel to provide system feedback during the calibration (“I did not get that.” “Got it!” “Calibration Ready.”).  


**Here are the tasks:**

- Activate the system
- Turn up the volume
- Go to the next song (3 times)
- Pause
- Go to the previous song
- Turn down the volume
- Stop the system

During the experiment, the facilitator provided oral instruction for the participant on which task that they would need to perform. The order of the tasks were adjusted based on the actual performance of each participant. We also included a task that allowed the participant to control the system without instruction.


## Part 3: Analysis


### Effectiveness of concealing “The Wizard”
We recruited three participants to test our gesture interface. As we were still relatively unpracticed with the manipulation of our prototype during our first user test, there were a few minor errors (delayed response to gestures and switching to an incorrect song) that ultimately blew our cover. The participant finished the test without making comments about these gestures, however there were very clear moments of confusion on their behalf. At the end of the test, before we had a chance to make our big reveal, the participant asked if we were manipulating the prototype from the laptops around by hand.  

An added factor that allowed the participant to come to this decision, was the fact that the mounted GoPro designed to pickup the user’s gestures was flashing a record light, making it especially conspicuous.  

The second and third tests went significantly smoother. We disabled the record light on the dashboard GoPro and executed the music transitions much more fluidly. As a result, the final two participants stated that they had complete faith in the system and its ability to register their gestures. Interestingly, despite the fact that the first subject understood the inner workings of the prototype, and the second and third did not, they all provided quality feedback with many similarities regarding the design of the gesture interface.  

### Effectiveness of the physical prototype and scenario
The driving simulator that hinted at the driving experience without actually giving participants control of the car, this allowed them to better imagine the scenario in which they would be used, but still place the majority of their attention on the music control gestures. For a first round of testing, this ended up being mostly fine. The only exception was when the final participant remarked that he was mildly frightened by the fact that he could not control the car, and gripped the steering wheel with both hands and looked at the screen whenever he was not asked to perform a gesture.

### User Feedback

#### Volume
All of the users responded positively to the volume up and down commands. They mentioned that they felt intuitive and easy to control. One of the participants likened the action to the scroll wheel on an ipod. The second user had a moment of difficulty with the volume controls and only did a semi-circle wave to change the volume using the palm of their hand, rather than making continuous swirling action until achieved the desirable volume level. The “Wizard” responded by making a minute volume adjustment, at which point the participant corrected the action.

#### Previous and next song
This was a big pain point for the participants. We initially had difficulty figuring out how to map the swiping. Should moving your hand from right to left go to the next song or previous? This is a difficult one to represent in a 3D gesture user interface, especially considering scroll directions operate differently on different systems and were flipped by Apple in 2011. Also, it is difficult to apply an action that users are very accustomed to on a 2D screen to a 3D space. All of the users expressed confusion on which way to move their hands to advance and go back with their song choice.  

One of the users flipped the directions completely, and we chose to “recognize” the incorrect gesture instead of breaking the fluidity of the experiment by interrupting them.
Two out of three users mentioned that they felt it was awkward to advance to the next song because by preparing to make the gesture for next song, they inadvertently did the gesture for previous song -- if their right hand was placed on the steering, they first had to move it across the sensor to the left before beginning the gesture for next song, they felt this was too similar to the gesture for going back to the previous song.

#### Play and pause
The play and pause gestures had mostly positive results. Users remarked that they were mostly intuitive and had little difficulty remembering them. The pause gesture was universally regarded the best gesture, with all participants completing it with zero errors. The only issue expressed by participants was that it felt cumbersome to have two separate gestures for both play and pause.


### Takeaways moving forward
As we learned in this exercise, creating a high fidelity experience can generate effective insights even with low fidelity of the prototype. With the appropriate set of tasks and instructions, we can engage the participants with high efficiency, and make modification to the design quickly.
With behavioral prototyping, we were able to evaluate our gestures and determine which ones were ineffective. For instance, in a future study we would iterate on the advance/previous gesture and try a thumb-right/thumb-left. This iteration might potentially prevent the two gesture interface interfere with one and another. The participants also showed interested in customizing the gesture interface, something that would be well within the feasibility of behavioral prototyping. For future tests, it would also be important to include additional features such as different play modes (shuffle and repeat).


## Video

<div class="videoWrapper">
	<iframe src="https://player.vimeo.com/video/153469958" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
</div>



