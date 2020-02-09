import 'package:flutter/material.dart';


class DesignSwitch extends StatefulWidget {
  bool val = false;
  Function onchanged;
  DesignSwitch({this.val, this.onchanged});
  @override
  _DesignSwitchState createState() => _DesignSwitchState();
}

class _DesignSwitchState extends State<DesignSwitch> {
  @override
  Widget build(BuildContext context) {
    return  Switch(value: widget.val,
      onChanged: widget.onchanged,
      inactiveTrackColor: Color(0xff36413e),
      inactiveThumbColor: Color(0xff5d5e60),
      activeColor: Color(0xffdb3a34),

    );
  }
}
