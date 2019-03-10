import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 20.0)),
            submitButton(),
          ],
        ));
  }

  Widget emailField() {
    return StreamBuilder(
        stream: block.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: block.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'you@example.com',
              labelText: 'Email Adress',
              errorText: snapshot.error,
            ),
          );
        });
  }

  Widget passwordField() {
    return StreamBuilder(
        stream: block.password,
        builder: (context, snap) {
          return TextField(
            onChanged: block.changePassword,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
              errorText: snap.error,
            ),
          );
        });
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Login'),
      color: Colors.red,
      onPressed: () {},
    );
  }
}
