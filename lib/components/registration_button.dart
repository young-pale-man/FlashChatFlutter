import 'package:flutter/material.dart';

class RegistrationButton extends StatelessWidget {
  RegistrationButton({
    super.key,
    required this.buttonColor,
    required this.buttonTitle,
    required this.buttonAction,
  });

  final Color buttonColor;
  final String buttonTitle;
  final VoidCallback buttonAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: buttonAction,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonTitle,
          ),
        ),
      ),
    );
  }
}
