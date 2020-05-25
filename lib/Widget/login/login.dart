import 'package:flutter/material.dart';
import 'package:flutter_3/Widget/MainPage.dart';
import 'hideShowPassword.dart';

class LoginForm extends StatefulWidget {
  LoginForm({
    Key key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 20, bottom: 10),
          width: 300,
          child: TextField(
            controller: _emailController,
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                labelText: 'Enter your Email'),
          ),
        ),
        PasswordFormField(
          controller: _passwordController,
        ),
        Container(
            padding: EdgeInsets.only(top: 10),
            width: 300,
            height: 70,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: BorderSide(color: Colors.blue)),
              color: Colors.white,
              textColor: Colors.blueAccent,
              onPressed: () {
                if(_emailController.text.length==0 || _passwordController.text.length==0){
                  showAlertDialog(context);
                }
                else{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyMainPage1()),
                  );
                }
              },
              child: Text(
                "log in".toUpperCase(),
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            )),
      ],
    );
  }
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {  Navigator.of(context).pop();},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Error"),
      content: Text("Please enter your Email & Password"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
