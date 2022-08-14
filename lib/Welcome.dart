import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center,
      child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),color: Colors.yellow,
        child:Text('WELCOME') ,),
    );
  }
}
