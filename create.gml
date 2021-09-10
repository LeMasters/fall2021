/// @description

// In addition to being the place where
// I declare the variables that I want this object
// to track throughout the game, the 
// CREATE is a great place to do all
// the administrative stuff that needs
// to happen eventually.  It is a good
// place to do that BECAUSE it only
// runs ONCE, and therefore isn't
// constantly doing the same tiny
// trivial tasks again and again.

// PLUS if you always put them here,
// then you know where to look for them
// as your code grows.

// allow for more than one random outcome...
randomize();

// set system to use Font1 by default
draw_set_font(font_brush);
// set my font alignments
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
// set system to use White by default
draw_set_color(c_maroon);

// ***************

// variable that this object will use for many
// different reasons.  Will basically grow
// until it hits 1.0

myCounter = 0.005;

// note that I don't use VAR here because I want to have
// access to these variables AFTER the CREATE event
// finishes (e.g., in STEP, DRAW GUI, etc.).  If I used VAR
// here, then they would be DESTROYED as soon as CREATE
// was finished.

// Simple string array in which I'm storing possible outcomes
//answer[0] = "I don't know.";
answer[1] = "Call me Ishmael. Some years ago never mind how long precisely having little or no money in my purse, and nothing particular to interest me on shore, I thought I would sail about a little and see the watery part of the world.";
answer[2] = "You don't know about me without you have read a book by the name of The Adventures of Tom Sawyer; but that ain't no matter.";
answer[3] = "The sun shone, having no alternative, on the nothing new.";
answer[4] = "The sky above the port was the color of television, tuned to a dead channel.";
answer[5] = "You are about to begin reading Italo Calvino's new novel, If on a winter's night a traveler. ";

// Note that the "result" variable gets used and then disposed of.
// Also note how I get around the weird "count from zero" problem?
// my array has 5 elements, 1 through 5.  Not 0 through 4.  That was
// just a decision on my part (and only works because this is fairly 
// simple code for now).  Then I pick a random number from 1-5.

result = irandom_range(1,5); // NOTE:  i = integer

// oh_fortuna then receives the specific fortune, and we're done.
oh_fortuna = answer[1];