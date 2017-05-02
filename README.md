# <img src="https://cloud.githubusercontent.com/assets/7833470/10899314/63829980-8188-11e5-8cdd-4ded5bcb6e36.png" height="60"> 20 Questions

### Overview

Remember those little games that could play 20 questions and seemed like magic? Let's practice using trees by writing our own version of that game.

![](https://images-na.ssl-images-amazon.com/images/I/51bmFud-tDL.jpg)
### Objectives

It's time to put you knowledge of trees into practice! In this assignment, you will:

- Write a class representing a **tree** in the context of building a 20 questions game.  
- Build the game-playing code that will allow people to actually play your game.
- Build a method for constructing a tree out of an array.

### Workflow

#### Step 0: How does 20 Questions work? How does it relate to trees?
Start by [playing a game](http://www.20q.net/) to remind yourself how 20 questions work. Think about how the sequence of choices you've made (yes or no answers to questions) might be represented using a tree.

<details><summary>How does a tree relate to playing 20 questions?</summary>
A tree can represent the questions that should be asked. When we get a "yes" answer, we can move to the right child; when we get a "no" answer, move left down the tree. That way, the node that we are at "records" what the previous answers to questions have been.

![](http://math.hws.edu/eck/cs225/s10/lab5/tree.png)

</details>

#### Step 1: Make a basic Tree class.
Start by creating an empty Ruby file. In that file, write a basic `TreeNode` class. The only thing this class really needs is an `initialize` method and some attributes.

<details><summary>
Recall: What information does a TreeNode know? Based on that, what attributes do we need?
</summary>

A `TreeNode` knows three things: its own value, its left child, and its right child. Those are the three attributes that your `TreeNode` will likely need.

</details>
<br>
Once you have this class written, try using irb to import your class and create a couple of simple TreeNodes.

#### Step 2: Initialize a basic tree.
Once you've written that `TreeNode` class, it's time to use it to build a tree! To start, you should hard-code in a very basic tree, probably to play the game "two questions" rather than "twenty questions". You could also hard-code the example tree given at the end of Step 0.

Once you have the code written to build that tree, stop and try it out in irb. Make sure that you understand how traversing that tree relates to playing the game.

#### Step 3: Build the game-playing code and get a game going!
