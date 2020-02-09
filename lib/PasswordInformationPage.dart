import 'package:flutter/material.dart';
import 'GeneratePassword.dart';
import 'constants.dart';
import 'GeneratedPasswordPage.dart';
import 'DesignSwitch.dart';

class PasswordPage extends StatefulWidget {
  PasswordGenerator pass = new PasswordGenerator();
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  bool includeCharacters = false;
  bool includeNumbers = false;
  double sliderval = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff011936),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Password Hack", style: kheaderTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Include Special characters? \n E.g. ? ! &", style: kmaintextstyle),
                    DesignSwitch(val: includeCharacters,onchanged: (value)
                    {
                      setState(() {
                        includeCharacters = !includeCharacters;

                      });
                    },)

                  ],),
                Row
                  (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Include numbers? \nE.g. 1,2,3",style: kmaintextstyle,),
                    DesignSwitch(val:  includeNumbers,onchanged: (value)
                    {
                      setState(() {
                        includeNumbers = !includeNumbers;

                      });
                    },),

                  ],
                ),
                Column(children: <Widget>[
                  Text("Password Length",style: kmaintextstyle
                  ),
                  Slider(value: sliderval, min: 10, max: 100,
                    inactiveColor: Color(0xff36413e),
                    activeColor: Color(0xffdb3a34),

                    onChanged: (value){setState(() {
                      sliderval = value;

                    });} ,
                    divisions: 100,
                    label: "${sliderval.round()}",),
                ],),
                MaterialButton(
                    child:Container(child: Text('Generate',style: kmaintextstyle),),
                    color: Color(0xffdb3a34),
                    onPressed: (){
                      print(includeCharacters);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  GeneratedPassword(password: widget.pass.Generate(sliderval.toInt(), includeCharacters, includeNumbers),)),
                      );
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
              ],

            ), ),
        ),
      ),
    );

  }
}


