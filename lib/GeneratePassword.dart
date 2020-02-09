
import 'dart:math';

class PasswordGenerator{

  final String  characterList = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz" ;
  final String specialSymbols = "<>.,:;}{[]/|_)(*&^%\$\\\"#@!~";
  final String Digits = "0123456789";
   Random ran =new Random();

  String Generate(int len, bool includeSymbols,bool includeNumbers)
  {
    String val ="";
      if(includeSymbols == true && includeNumbers == true)
      {
        String fake = "";
        fake += characterList;
        fake += Digits;
        fake += specialSymbols;
        for(int i =0; i< len; i ++)
        {
          val += fake[ran.nextInt(fake.length-1)];
        }
        return val;
      }
      else if(includeNumbers == true && includeSymbols == false)
      {
        String fake = "";
        fake += characterList;
        fake += Digits;


        for(int i =0; i< len; i ++)
        {
          val += fake[ran.nextInt(fake.length-1)];
        }
        return val;
      }
      else if(includeNumbers == false && includeSymbols == true)
      {

        String fake = "";
        fake += characterList;

        fake += specialSymbols;
        for(int i =0; i< len; i ++)
        {
          val += fake[ran.nextInt(fake.length-1)];
        }
        return val;

      }

      else {

        for(int i =0; i< len; i ++)
        {

          val += characterList[ran.nextInt(51)];
        }
        return val;
      }
  }

}