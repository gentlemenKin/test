
import 'package:flutter/material.dart';


class ChooseCredentialspage extends StatelessWidget {

  const ChooseCredentialspage({
    this.onSignupComplete,
});

  final VoidCallback onSignupComplete;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSignupComplete,
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.display1,
        child: Container(
          color: Colors.pinkAccent,
          alignment: Alignment.center,
          child: Text('choose credentail page'),
        ),
      ),
    );
  }
}
