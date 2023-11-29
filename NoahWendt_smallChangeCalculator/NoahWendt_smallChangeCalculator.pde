/*
Here is my small change calculator. Doing all in one while loop. 
I tired using switch cases but the syntax did not work for me. So back to if elses. 
The removal of multiples is implemented 
although coins that are not needed at all show up as 0x because i wrote all in a single println.
Could do all as a seperate println but in my opinion this should be sufficient. 
Also I did not use any fancy input methods. So the value to be calculated is kinda hardcoded. 
*/

float userInput =3.18;
int twoEuroCoin;
int oneEuroCoin;
int fiftyCoin;
int twentyCoin;
int tenCoin;
int fiveCoin;
int twoCoin;
int oneCoin;

void setup ()
{
  println("You want to convert "  +userInput+ "€ to coins.");

  int cents = inputToCents(userInput);
  while (cents>0)
  {
    if(cents>=200){
      twoEuroCoin++;
      cents-=200;
    }else if (cents>=100) {
      oneEuroCoin++;
      cents-=100;
    } else if (cents>=50) {
      fiftyCoin++;
      cents-=50;
    } else if (cents>=20) {
      twentyCoin++;
      cents-=20;
    } else if (cents>=10) {
      tenCoin++;
      cents-=10;
    } else if (cents>=5) {
      fiveCoin++;
      cents-=5;
    } else if (cents>=2) {
      twoCoin++;
      cents-=2;
    } else if (cents>0) {
      oneCoin++;
      cents-=1;
    }
  }
  println("You will need: "
  + twoEuroCoin+"x2€ coin"
  +oneEuroCoin + "x1€ coin, "
  +fiftyCoin + "x50ct coin, "
  +twentyCoin+ "x20ct coin, "
  +tenCoin+ "x10ct coin, "
  +fiveCoin+ "x5ct coin, "
  +twoCoin+ "x2ct coin, "
  +oneCoin+"x1ct coin");
}

int inputToCents (float input)
{
  return int(input*100);
}
