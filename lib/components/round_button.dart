import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
//  const RoundedButton({
//    Key key,
//  }) : super(key: key);

  final Color color;
  final String title;
  final Function onPressed;

  RoundedButton({this.color, this.title, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        //color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
//          onPressed: () {
//            //Go to registration screen.
//            Navigator.pushNamed(context, RegistrationScreen.id);
//          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
            //'Register',
          ),
        ),
      ),
    );
  }
}
