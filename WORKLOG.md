# Work Log

## GROUP MEMBER 1 - Alice

### 5/22/24

In class: Added basic method and field names into all class according to the prototype, started setup and draw.

### 5/23/24

In class: Uploaded images, started with basic methods "skeleton"

### 5/24/24

(had AP Calc exam)
At home: debugged UFO physics (specifically attractto and move) so that it makes more sense with the game

### 5/25/24

At home: Fixed up setup method; also changed up the approach for physics methods in UFO, which simplifies the logic

### 5/26/24

At home: Added rotational motion to the UFO class so that fruits rotate as they move, including variables and methods. Drawing would also apply rotation.

### 5/27/24
At home: Made fruits start at a randomized speed, and made adjustments so that the score would change OR the game ended if the mouse was dragged over certain things (seems a little buggy)

### 5/28/24

In class: Made fruits start at a random location, made some adjustments for player convenience/visibility, fixed a bug with endGame() and replay, and made mouseDragged() not end the game due to an error.

### 5/29/24

In class: Worked on a splatter shape for the fruits, and worked on making splatter a compatible method with all fruits, depending on the color.

### 5/30/24

In class: Worked on the split method, managed to make it a basic function through cropping (no gravitational force yet), fixed minor bugs with inheritance

### 5/31/24

In class: Worked on the visibility of split, tried doing gravitational attraction when the fruits are splitted but it didn't work (i.e. returning PImage array for split that both slices can have gravitational force on)

### 6/1/24

At home: Made game end after 3 fruits missed, made splatters fade out, fixed some small visual bugs, fixed a bug where fruits spawn in the wrong place in certain cases

### 6/2/24

At home: FIXED lagginess, fruit slices jumping around, and issues with fruits spawning in different places by changing the way the physics is calculated. Also, fixed a bug in the watermelon class where it doesn't use the right inherited method for certain physics. Also made gameplay faster and smoother and changed splatter colors, and keyboard shortcut to end game

### 6/3/24

In class: Fixed a bug with the end screen where the missedfruits and the game over text wouldn't show up properly. Also starting bomb testing

### 6/4/24

At home: Worked on bomb (game ends, visual effect when ecplodes, simplification of the class), also added background to the game

### 6/5/24

At home: Started basic pause functionality - made a template for the code but didn't upload any images yet

### 6/6/24

At home: worked on the pause button, created code for a menu that would pop up when the game is paused

### 6/7/24

In class: Fixed visuals and function of pause button, fixed bug with text positioning in win and end screens, fixed win screens (mostly for testing)
At home: Fixed end screen not properly displaying a replay button, hitboxes for all buttons, and started work on a start screen. Also made a variable tracking the status of the game

### 6/8/24

At home: Fixed issues with pause menu buttons not working, fixed minor win screen issues, fixed time it takes to win the game, updated readme

### 6/9/24

At home: fixed problem with replay button on pause screen, uploaded video presentation, keyboard shortcut to replay

## GROUP MEMBER 2 - Eva

### 5/23/24

In class: I made an arraylist to make the watermelon show up and displayed it successfully.
At home: Randomized which fruit is generated, added correct image files, and made the fruits move in keyPressed() by changing the x and y values with new methods. 

### 5/24/24

In class: I updated the image files to have better resolution and began writing the physics simulation, based on Orb lab. Might switch to a new calculation based on projectile motion though. 

### 5/26/24
At home: designed and implemented a simpler approach to the physics: projectile motion. 

### 5/28/24
In class: worked on splatter in class, tried to use a boolean to display it.
At home: implemented basic correct default splatter! decided to use an arraylist to store PVectors instead

### 5/29/24
In class: got more correct splatter to work, utilizing the classes instead of doing it in main.
At home: Finished splatter and added a different colored one to each class. 

### 5/30/24
In class: Made fruits randomly generate and move. Don't use keypressed anymore, just generates immediately.

### 5/31/24
In class: No progress made. Struggled with split.

### 6/1/24
At home: Created new class, Half, and made split work correctly, with physics applied to each half of the fruit. 

### 6/3/24
In class: No progress, time spent merging and doing a demo.

### 6/5/24
In class: Added a winGame method, updated endGame and draw() visually.

### 6/7/24
In class: Not much progress made, started to change the end screens to be a bit more visually varied. Tried to implement different splatter angles; failed.

### 6/8/24
At home: Adjusted replay button locations a little bit, visually changed end screens. Also added 1 more end screen keyboard shortcut. Also changed missedFruits to display using red X's instead of just n/3.
