import 'package:flutter/material.dart';
import 'package:legalsuits/components/commons.dart';
import 'package:legalsuits/globals.dart' as g;

//login signup button
class AuthButton extends StatefulWidget {
  const AuthButton({Key key, this.buttonName, this.onPressed})
      : super(key: key);
  final String buttonName;
  final Function onPressed;

  @override
  _AuthButtonState createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: RawMaterialButton(
            onPressed: widget.onPressed,
            child: Container(
                height: g.height * 0.0824,
                decoration: BoxDecoration(
                  color: g.bluebg,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    widget.buttonName,
                    style: buttonText,
                  ),
                )),
          ),
        ),
      ],
    );
  }
}

//add new case, submit button etc
class SubmitButton extends StatefulWidget {
  const SubmitButton({Key key}) : super(key: key);

  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: g.width * 0.226,
        right: g.width * 0.226,
        top: 15.0,
        bottom: 20.0,
      ),
      child: RawMaterialButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            color: g.primary,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: Text(
                'Add New Case',
                style: buttonText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
