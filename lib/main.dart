import 'package:flutter/material.dart';
import 'package:flutter_counter_app/DesignCounter.dart';

void main()
{
  runApp(Counterapp());
}
class Counterapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter Demo"),
        ),
        body: DesignCounter(),
      ),
    );
  }
}
