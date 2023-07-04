import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = "login-page";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final logo = Hero(
    tag: 'hero',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      child: Image.asset('assets/logo.png'),
    ),
  );

  final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    initialValue: 'evans@gmail.com',
    decoration: InputDecoration(
      hintText: 'Email',
      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0)
      )
    ),
  );

  final password = TextFormField(
    keyboardType: TextInputType.visiblePassword,
    autofocus: false,
    obscureText: true,
    initialValue: 'password',
    decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0)
        )
    ),
  );

  final loginButton = Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 12)),
            elevation: MaterialStateProperty.all(5),
            backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
            
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                )
            )
        ),
        onPressed: () {
        // Navigator.of(context).pushNamed(HomePage.tag);
      },
      child: const Text('Log In', style: TextStyle(color: Colors.white)),
    ),
  );

  final forgotLabel = TextButton(
    onPressed: (){},
    child: Text("Forgot Password? ",style:TextStyle(
      color: Colors.black54,
    )),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24,right: 24.0),
          children: [
            logo,
            SizedBox(height: 48.0,),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 15.0,),
            loginButton,
            SizedBox(height: 24.0,),
            forgotLabel,
          ],
        ),
      ),
    );
  }
}
