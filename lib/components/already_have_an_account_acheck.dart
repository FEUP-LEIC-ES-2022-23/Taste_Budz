import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1),),
        ),
        const SizedBox(height: 70),
        GestureDetector(

          onTap: press as void Function()?,
          child: Text(
            login ? "Sign Up" : "Log In",
            style: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
