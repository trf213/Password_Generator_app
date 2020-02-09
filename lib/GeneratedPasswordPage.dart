import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';


class GeneratedPassword extends StatefulWidget {
  String password ="";

  GeneratedPassword({this.password});
  @override
  _GeneratedPasswordState createState() => _GeneratedPasswordState();
}

class _GeneratedPasswordState extends State<GeneratedPassword> {
  bool _displayPassword = false;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(color: Color(0xffdb3a34),onPressed: (){Navigator.pop(context);},),
          backgroundColor: Color(0xff011936),
          elevation: 0,
        ),
        backgroundColor: Color(0xff011936),
        body: SafeArea(
          child: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Password Hack", style: kheaderTextStyle),
                Text("Generated Password", style: kmaintextstyle,),
                Container(margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(10),

                  width: double.infinity,
                  child: Column(children: <Widget>[
                    Text(widget.password, style: kmaintextstyle,),
                    Builder(
                      builder: (context) => IconButton(icon: Icon(Icons.content_copy, color: Colors.white,),color: Colors.white,
                        onPressed: () {
                          Clipboard.setData(ClipboardData(text: widget.password));
                        Scaffold.of(context).showSnackBar(new SnackBar(
                          content: new Text('You have cloned me!'),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              Clipboard.setData(ClipboardData(text: ""));
                            },
                          ),
                        ));

                      },)
                    ),

                  ],),
                  decoration: BoxDecoration( color: Color(0xFF465362),borderRadius: BorderRadius.all(Radius.circular(10)),),
                ),


              ],

            ),

          ),
        ),
      ),
    );
  }
}
