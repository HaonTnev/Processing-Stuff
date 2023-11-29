/*
Here is my fairy tale economy calculator. 
As suggested, I used my small change calculator as a starting point. 
The main challenge of course is the conversion. 
I started by converting all items into scraps, 
as can be seen in the commeents behind the variables. 
Copy and pasting the values into my logic and voila. Should work. 
Does it? havent done the math in my head tbh xd 
 */

int userInput = 92531;
int diamonds;//worth 3 Gold Nuggets and a Silver Coin == 3*754+306 scraps == 2568
int goldNuggets;//worth 2 Silver Coins and 142 Scraps == 612+142 == 754 scraps
int silverCoins;//worth 3 Hardwood Blocks == 306 scraps 
int hardwoodBlocks;//worth 102 Scraps
int scraps;//worth … 1 Scrap

void setup ()
{
  println("You want to convert "  +userInput+ " scraps.");

 
  while (userInput>0)
  {
    if (userInput>=2568) {
      diamonds++;
      userInput-=2568;
    } else if (userInput>=754) {
      goldNuggets++;
      userInput-=754;
    } else if (userInput>=306) {
      silverCoins++;
      userInput-=306;
    } else if (userInput>=102) {
      hardwoodBlocks++;
      userInput-=102;
    } else if (userInput>=1) {
      scraps++;
      userInput-=1;
    } 
  }
  
  println("You will get: "
    + diamonds+" diamonds, "
    +goldNuggets + " gold nuggets, "
    +silverCoins+ " silver coins, "
    +hardwoodBlocks+ " hardwood blocks and "
    +scraps+ " scraps.");
}
