---
layout:     post
title:      Physical Computational Prototyping
date:       2016-03-03 10:50:13
summary:    This post covers my introduction to Arduino and physical computing. I did five simple builds to learn the basics of Arduino and where to find development resources.
categories: 
- prototyping
- process
- physical
---

<p class='regular' markdown='1'>
	This post covers my introduction to Arduino and physical computing. I did five simple builds to learn the basics of Arduino as well as explore where to find development resources. This post will provide brief walkthroughs, sources, and documentation of each of the five builds. I’ll also include some commentary about the build process, and what I found surprising.
</p>

<p class="center"> * * * </p>


## Arduino
Arduino is an open-source prototyping platform thats designed for accessiblity. The board can read inputs from varios digital and analog sensors as well as talk to the internet. The board can act on this input by turning on a light, a motor, or making a post online. They are a powerful prototyping tool because they are cheap, easy-to-use, and relatively powerful.


## 01: Photocell
The  first task is a simple photocell that delivers an analog reading of the ambient light. The circuit is quite simple. This was fun to play with, and I can imagine some great applications for the photo cell on its own, but coupled with a laser it could be a powerful tool. To create the build, I consulted the extensive [Adafruit Photocell tutorial](https://learn.adafruit.com/photocells/using-a-photocell). 

I was surprised at how well calibrated the photocell was to indoor light levels. Directly under a light bulb, the analog reading was around 900. Placing my  finger over the sensor caused this reading to drop to around 300, but I had expected a greater drop. It wasn’t until I placed an opaque bag over the sensor that I was able to get it below 100.

### Diagram

![Joystick Sketch](/images/blog/physical-computing/photocell-diagram.gif)

### Sketch Code  

	int photocellPin = 0;     // the cell and 10K pulldown are connected to a0
	int photocellReading;     // the analog reading from the sensor divider
	void setup(void) {
	  // Send debugging information via the Serial monitor
	  Serial.begin(9600);   
	}
	 
	void loop(void) {
	  photocellReading = analogRead(photocellPin);  
	 
	  Serial.print("Analog reading = ");
	  Serial.println(photocellReading);     // the raw analog reading

	  // Wait 0.5 seconds between each reading
	  delay(500);
	}

### Output
![PHotocell Output](/images/blog/physical-computing/photocell-output.png)


## 02: Hall Effect Sensor
The hall effect sensor has the ability to detect if a magnet is present. When the output voltage of the Hall Effect Sensor is high, there is a magnet present. With my build, this translated to a binary output, with 1 being no magnet present and a 0 indicating a magnetic field.
I can imagine quite a few uses for this, including a sensor that determines if a door open is open or closed, or a speedometer on a bike wheel.

The example code was modified and simplied from the [Hobby Electronics Hall Effect Tutorial](http://www.hobbytronics.co.uk/arduino-tutorial11-hall-effect).

### Diagram

![Hall Effect Diagram](/images/blog/physical-computing/hall-effect-diagram.jpg)

### Sketch Code  

	const int hallPin = 12;    
	int hallState = 0;      
	void setup() {
	    
	  // initialize the hall effect sensor pin as an input:
	  pinMode(hallPin, INPUT);    
	  Serial.begin(9600); 
	}

	void loop(){
	  // read the state of the hall effect sensor:
	  hallState = digitalRead(hallPin);

	  // print out the 0 or 1 to the console
	  Serial.println(hallState);
	  delay(500);

	}

### Output
![Joystick Sketch](/images/blog/physical-computing/hall-effect-output.png)

## 03: Disco Countdown
For the third task I created an "interesting" combination of flashing lights using three independently controlled LEDs. I used two green LEDs and two RGB LEDs to create a countdown effect. The green LEDs alternate at an increasingly rapid rate.
After a short period of time  flashing rapidly, the two RGB LEDs fade through all colors. I was surprised by how easy to control the RGB LEDs, and hope to put them to greater use for further projects. 

Initially I was trying to handle the countdown with a for loop. Although this appeared to make sense, I found myself trying to establish timing through trial and error. It was difficult to have the iterating integer drop quickly enough without hitting a negative, something that would cause the green LEDs to remain illuminated and never enter disco mode. This was obviously a tragedy, and I was stuck until a classmate suggested a while loop.


The code for blinking LEDs was modi ed from the Arduino “Blink” tutorial, and the code for a smooth fade between colors was modified from [this blog post](http://yaab-arduino.blogspot.com/2015/01/ rgb-led-fading-colors-arduino.html). The schematic was (obviously) hand drawn.

### Diagram

![Disco Countdown Diagram](/images/blog/physical-computing/disco-diagram.jpg)

### Sketch Code  

	#define RED_PIN 9      // where the red pin is connected to
	#define GREEN_PIN 10   // where the green pin is connected to
	#define BLUE_PIN 11    // where the blue pin is connected to
	#define DELAY 1       // 2ms internal delay; increase for slower fades
	#define SPEED 20       // change the speed of the countdown
	int startSpeed = 1000;

	void setup() {

	  // variables for the disco ball
	  pinMode(GREEN_PIN, OUTPUT);
	  pinMode(BLUE_PIN, OUTPUT);
	  pinMode(RED_PIN, OUTPUT);

	  // variables for the countdown
	  pinMode(12, OUTPUT);
	  pinMode(8, OUTPUT);

	  Serial.begin(9600);
	}

	void loop() {

	  analogWrite(RED_PIN, 255);
	  analogWrite(GREEN_PIN, 255);
	  analogWrite(BLUE_PIN, 255);

	  while (startSpeed > 8) {

	    // for (int i = 0; i < 20; i++)
	    // int delaySpeed = 500 - (50 + SPEED * i);
	    startSpeed = startSpeed / 2;
	    digitalWrite(8, HIGH);   // turn the LED on (HIGH is the voltage level)
	    delay(startSpeed);              // wait for a second
	    digitalWrite(8, LOW);    // turn the LED off by making the voltage LOW
	    delay(startSpeed);
	    digitalWrite(12, HIGH);   // turn the LED on (HIGH is the voltage level)
	    delay(startSpeed);              // wait for a second
	    digitalWrite(12, LOW);    // turn the LED off by making the voltage LOW
	    delay(startSpeed);
	    Serial.println(startSpeed);

	    startSpeed = startSpeed - 7;
	  }

	  // infinate party mode
	  while (true) {
	    for (int i = 0; i < 10; i++) {
	      // fade from green to red
	      for (int i = 0; i < 255; i++) {
	        analogWrite(RED_PIN, i);
	        analogWrite(GREEN_PIN, 255 - i);
	        analogWrite(BLUE_PIN, 0);
	        delay(DELAY);
	      }

	      // fade from red to blue
	      for (int i = 0; i < 255; i++) {
	        analogWrite(RED_PIN, 255 - i);
	        analogWrite(GREEN_PIN, 0);
	        analogWrite(BLUE_PIN, i);
	        delay(DELAY);
	      }

	      // fade from blue to green
	      for (int i = 0; i < 255; i++) {
	        analogWrite(RED_PIN, 0);
	        analogWrite(GREEN_PIN, i);
	        analogWrite(BLUE_PIN, 255 - i);
	        delay(DELAY);
	      }
	    }
	  }
	}

### Output
![Disco Countdown Output](/images/blog/physical-computing/disco-output.png)

## 04: Light Dimmer Switch

The goal of this project was to create an LED that could be dimmed with a potentiometer using pulse width modulation (PWM). The [arduino.cc PWM tutorial](https://www.arduino.cc/en/Tutorial/PWM) was crucial to my understanding of this concept and building the sketch. In short, by turning an LED on and off at rapid intervals, it can trick the human eye into seeing a fade in brightness. I was suprised at how effective this was and how easy it was to setup. 

The [Potentiometer tutorial on arduino.cc](https://www.arduino.cc/en/tutorial/potentiometer) was also crucial to my understanding of this sketch. I found it partularly useful that their example code indicated why the resulting analog output had to be divided by 4 in order to be an effective method of control.

### Diagram

![Light Dimmer Diagram](/images/blog/physical-computing/dimmer-diagram.png)

### Sketch Code  

	int led = 9;           // the PWM pin the LED is attached to
	int brightness = 0;    // how bright the LED is
	int fadeAmount = 5;    // how many points to fade the LED by
	int analogPin = 3;   // potentiometer connected to analog pin 3
	int val = 0;         // variable to store the read value

	// the setup routine runs once when you press reset:
	void setup() {
	  // declare pin 9 to be an output:
	  pinMode(led, OUTPUT);
	}

	// the loop routine runs over and over again forever:
	void loop() {
	  // 
	  val = analogRead(analogPin);   // read the input pin

	  // set the brightness of pin 9:
	  analogWrite(led, brightness);

	  // change the brightness for next time through the loop:
	  brightness = val / 4;

	  // reverse the direction of the fading at the ends of the fade:
	  if (brightness == 0 || brightness == 255) {
	    fadeAmount = -fadeAmount ;
	  }
	  // wait for 30 milliseconds to see the dimming effect
	  delay(30);
	}

### Output
![Light Dimmer Output](/images/blog/physical-computing/dimmer-output.png)

## 05: Doorbell

The doorbell I created is more akin to a morse code messenger than an actual doorbell. It’s quite simple. When the button is pressed, the buzzer emits a tone, when it is not pressed, the buzzer does not. I had a more diffcult time getting this one set up, partly due to an error on the [tutorial](http://mbeded.blogspot.com/2012/04/controlling- buzzer-with-push-button.html) I found. I began troubleshooting this error by disconnecting the buzzer and logging the button status to the console. It was working as expected. Ultimately I discovered the issue was an improperly wired buzzer as well as an issue with my code.

### Diagram

![Buzzer Diagram](/images/blog/physical-computing/buzzer-diagram.jpg)

### Sketch Code  

	const int buttonPin = 2;    
	const int buzzerPin =  3;      


	int buttonState = 0;         

	void setup() {
	  
	  pinMode(buzzerPin, OUTPUT); 
	       
	  pinMode(buttonPin, INPUT);     
	}

	void loop(){

	  buttonState = digitalRead(buttonPin);
	  
	 if (buttonState == HIGH) {     
	    tone(buzzerPin, 300);  
	  } 
	  else {
	    noTone(buzzerPin); 
	  }
	}

### Output
![Buzzer Output](/images/blog/physical-computing/buzzer-output.png)



