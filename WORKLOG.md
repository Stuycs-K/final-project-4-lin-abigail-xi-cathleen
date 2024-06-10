# Work Log

## Abigail Lin

### 5/22

I created a basic clothing class, including: constructor (takes theme and filename), and getPoints which will return its points based on the theme index.

I created all of the sub clothing classes: accessories, face, hair, pant, shoe and top. They have basic constructors that super the clothing constructor.

I created the Avatar class, which created an ArrayList of all clothesOn which would be able to add/remove clothing onto the avatar with methods. I also added a test class.

I used the test class to test the add clothing, removing clothing methods of Avatar.

### 5/23

I realized that our theme/point system was insufficient, so I created a system on the google docs. It includes the 6 types of clothing styles, 10 themes, and point system involving +10 for each on theme clothing. I also added onto the Avatar class and added placeholder calculateRating, resetOutfit, and get methods.

I used a scanner to take a txt file with clothingnames and easily make new clothing. Changed getPoints to account for theme.

### 5/24

I worked on merging my current files with Cathleen, and fixing the errors that came up. I used my current scanner method to change the manually importing of clothing files.

### 5/27

I ran into an error with processing not accepting the classes while working on it, so I switched to codium.

I updated game so that it works with the scanner and constructs properly to make all of the clothing. Now, selectClothing and removeClothing take index based on the position in the closet, which is currently always set. newRound is not finished, and I am thinking of moving it outside the class.

I merged with Cathleen's current work and worked on fixing errors to combine the game class properly. Currently, replaced part of menu with new clothing system. Some of the tabs don't work.

### 5/28

I switched small code around in menu, need to commit to merge. I continued to work on game to figure out how to make the closet show up. Ended up using loadStrings with Mr. K's advice.

I fixed bug where clothing wasn't showing up. Errors with barbie shirt and white hoddoie having corrupted image data.

### 5/29

I cleaned up code in menu to be consistent with topsTab. I tested all of the tabs and found more bugs with some of the images, and changed the names of some images that were inconsistent.

I am implementing code to drag objects. I have a test code that drags a square, and will be modifying it for clothing.

We needed more clothing files/avatars to work with, so I went online to find a base avatar and clothing files that fit.

Currently, have a lot of broken code with the moveable clothing. One bug is that all of the clothing are moving at the same time. Will ask Mr. K about it tommorow.

Ended up fixing to make it move a specific piece of clothing. However, the more clothing I add the more it lags. Will find a way to make less laggy.

### 5/30

I finished mouse dragging for each clothing with Mr. K's help, waiting on tab code to merge. In the meantime, will find more clothing.

I imported the avatar and resized it. End of class, working on 'snaping' images onto the avatar.

Confused on bug that moves all of the clothes when snapping, asking for help.

Fixed bug, clothing works fine. Going through process of organizing and deleting useless code.

I pulled a lot of clothing from Cathleen's branch, which works only a bit of the time. Looking into checkClicked method.

### 5/31

I merged manually with Cathleen's work, and am working through to fix all of the errors that came in conflict.

Fixed bug where checkCliced was checking wrong place, now click and drag is good. Still working on merging with Cathleen's code.

### 6/1

Fixed tab bug where it would switch to another screen, changed tab method names to be consistent. Merged with Cathleen.

So excited. I was able to finalize a working switch through the menu to show all of the clothes, which now stay on even when switching tabs. Lag is still decent.

### 6/2

I resolved bug where it moved clothing that wasn't in the designated tab. I am resolving lag.

I added a feature so that clothes displayed in order, need to ask Cathleen to fix some of the x/y coords.

Fixed bugs with pants at the head, added face, and tested to make sure it worked. Merged with main.

### 6/3

I asked Mr. K for advice on the lag when dragging clothing, and added comments to fix the framerate (with resizing).

### 6/4

I fixed issue with the lag, and I am now looking into the bug where mouse isn't dragging the clothing.

### 6/5

I created snapBack which is when you take off a clothing and return it, it is hidden and snaps back to its original place.

I am working on the point system, and continuing to investigate clicking bug.

## 6/5

Successfully implemented point system, which correctly accounts for snapping on and off. (no cheating!) Full point system has not yet been implemented.

## 6/6

Deleted all of the useless java files that are now unneeded. Pulled from Cathleen's code to get working button pressing for testing. Successfully finished a reset button that clears the points and clothing.

## 6/8

I switched out all of the buttons for images pulled from game Love Nikki to make it look more asthethic. I also added a avatar and clothing background.

I added a reset button with a new image, and made the theme viewable.

I was able to fix the problem of the mouse not working all the time by removing the undisplay method and fixing up the display method.

After a lot of tweaking, I added a full emo outfit and change the constructor of clothing to include a constant (which changes image size). I started work on the left and right buttons to move 'slides' in a tab.

## 6/9

With Cathleen, I worked on figuring out how to make left and right buttons work, and adjusting files in clothingNames.txt in the process to fit properly and go on the write page.

I worked on updating the proposal and cutting out unneccessary methods.

## Cathleen Xi

### 5/23

I started the Game class, adding private variables like the themes, the currTheme, avatar, closet, and timer. I continued with manually adding all of the themes into the ArrayList, and creating methods newRound and select/removing clothing. I replaced the ArrayList in exchange for an array as the themelist would not change.

I added removeClothing, but not sure how to remove so I used the placeholder method.

I found a bunch of clothing files, and added them into the arraylist with their theme index and filename. I merged my branch in order to work better with Abigail.

### 5/27

I worked on all of the buttons to switch clothing tabs in menu. This includes the method createBox which creates the rectangle, and each individual tab button.

I moved the clothing files into the processing folder, and moved closet.txt so that JVM can access it on local, and fixed Tab methods.

I continued to test and update menu methods in processing.

### 5/28

I continued to add and look for new clothing files.

### 5/29

I made a new button for resetting / starting a newRound. I fixed the button and simplified code. I made buttons for different sections of menu.

After merging, I continued to shape up menu. Fixing spacing issue with boxes. I started placing tab buttons onto menu.

### 5/30

I found and named more clothing files. I added side buttons to menu. I fixed bugs with side buttons and image displays. I did a clean up of the code.

### 5/31

I found more clothing files to be used, removed background, assign theme and type.

### 6/2

I finally figured out how to turn text sideways, and I put all of the tab names on the side tabs. I went searching for a few more clothing files and added more. I removed excess files.

### 6/3

I fixed sizing of text and buttons, and added final touches for the demo branch.


### 6/6

I made a new button class with Mr. K's advice, and moved methods from GameSetup there. I figured out how to make button change color when mouse hovers over it. I used that to make all of the buttons change color with hover. I fixed bug with menu tabs not working all the time.

### 6/7

I made a new timer class and created the timer for the game. After the clock runs down, the game will display
an end screen, which shows the rating of the outfit the user has created.

### 6/9

Worked on left/right buttons in Menu. I also added more clothing files. I also added stars 
to the end screen.