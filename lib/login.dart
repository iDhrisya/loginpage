import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/Register.dart';
import 'Welcome.dart';
import 'main.dart';
final FirebaseAuth _auth = FirebaseAuth.instance;
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  final TextEditingController _emailController =TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 70,
                  backgroundImage: NetworkImage('https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/d2abd662597191.5a9589b09ddf5.jpg',)
                ),
                SizedBox(height: 50,),
                TextField( controller:_emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius:BorderRadius.circular(15),),
                    labelText: 'Enter your email',
                    hintText: 'Eg:abc@gmail.com',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(controller: _passwordController,

                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    labelText: 'Enter your Password',
                    hintText: 'PASSWORD',
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),Row(mainAxisAlignment: MainAxisAlignment.center,
                  children:[ ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>SignupPage()),
                      );
                    },child: Text(
                    'Register',
                    style: TextStyle(fontSize: 20),

                  ),
                  ),SizedBox(width: 40,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>Welcome()),
                    );
                  },child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20),

                ),
                ),
              ],
              ),] ),
          ),
        ),
      ),
    );
  }
}
