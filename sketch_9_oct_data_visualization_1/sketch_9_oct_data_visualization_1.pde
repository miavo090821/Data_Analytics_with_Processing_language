String[] lines = loadStrings("namesData.txt");
//String[] tokens =split(lines[1],","); // this says split each data in
// a line into each value, and split them at each comma. and we call it token here.
// or we can call it Mia or Vinny or whatever.
// it's just a variable name for the data.

//// So, lines[0] will contain ...
//Nora Gigg,1,4,851,1995,Female,3XL,#b002f7,ngigg0@telenet.co.

//And, lines[1] will contain ...
//Bobby Montague,0,3,2758,1967,Male,XL,#45ac24,bobbymont@skype.com.

//And, lines[9] will contain ...
//Jason Daouze,0,2,1113,2006,Male,S,#0230cc,jdaouze9@xrea.com, etc.

printArray(lines); // to see all data of array we've got

//for i in range (19,0)
for (int i=0; i < lines.length; i++) {

  printArray(lines[i]);
}


//println(lines.length); // to see the number of line in our array

//println(lines[0]); // to see the first line in the array

//println(lines[1]); // print the 2 lines

//printArray(tokens);// now we are analyse the line 1 in the big array.
//// we are splitting the line into many tokens.

//println(tokens[4]); // here is the 5th value which is assigned as token 4.
//// because the array always starts from index 0-n. 1st is index 0, 2nd is index 1,
//// and now 5th is index 4.
