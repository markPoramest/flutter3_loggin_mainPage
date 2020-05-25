import 'package:flutter/material.dart';
import 'login_button/facebook.dart';
import 'login_button/twiiter.dart';
import 'login_button/google.dart';
import 'login/login.dart';

class HomeBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "JOTARO",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontFamily: 'Freedam Theory'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, bottom: 10),
          child: Text(
            "Log in to save to your favorites so we can better personalize your recommendations",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15,
                color: Colors.black38,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: GoogleSignInButton(onPressed: () {}),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 5),
          child: FacebookSignInButton(onPressed: () {}),
        ),
        Container(
            padding: EdgeInsets.only(bottom: 20),
            child: TwitterSignInButton(onPressed: () {})
        ),
        Text('or', style: TextStyle(
            fontSize: 20, color: Colors.black38, fontWeight: FontWeight.bold
        ),),

        Container(

          width: 300,
          padding: EdgeInsets.only(top:10),
          child: LoginForm()
        ),

        Container(
          padding: EdgeInsets.only(bottom:20),
          child: RawMaterialButton(
              constraints: BoxConstraints(),
              padding: EdgeInsets.all(5.0), // optional, in order to add additional space around text if needed
              child: Text('Forgot login details?',style: TextStyle(decoration: TextDecoration.underline, color: Colors.black38)),
              onPressed: (){}
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Text('Not a member?',style: TextStyle(
                color: Colors.black38,
            )
              ),),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: RawMaterialButton(
                      constraints: BoxConstraints(),
                      padding: EdgeInsets.all(5.0), // optional, in order to add additional space around text if needed
                      child: Text('Join Jotaro',style: TextStyle(decoration: TextDecoration.underline, color: Colors.black38)),
                      onPressed: (){}
                  ),
                ),
              )

            ]
        )
      ],
    );

  }

}
