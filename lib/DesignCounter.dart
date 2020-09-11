import 'package:flutter/material.dart';
class DesignCounter extends StatefulWidget {
  @override
  _DesignCounterState createState() => _DesignCounterState();
}

class _DesignCounterState extends State<DesignCounter> {
  String value="0";
  int _c=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.grey,Colors.white70]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            Center(
              child: RaisedButton(onPressed: (){
                _c++;
                setState(() {
                  value=_c.toString();
                });
              },
              child: Text("+",style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 15.0
              ),),),
            ),
            SizedBox(height: 10.0,),
            Center(
              child: RaisedButton(onPressed: (){
                _c--;
                setState(() {
                  value=_c.toString();
                });
              },
                child: Text("-",style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 15.0
                ),),),
            ),
            SizedBox(height: 10.0,),
            Center(child: Text(value,style: TextStyle(
                color: Colors.purple,
                fontSize: 20.0,),))
          ],
        ),
      ),
    );
  }
}
