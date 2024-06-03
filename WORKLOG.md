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

At home: FIXED lagginess, fruit slices jumping around, and issues with fruits spawning in different places by changing the way the physics is calculated. Also, fixed a bug in the watermelon class where it doesn't use the right inherited method for certain physics.

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