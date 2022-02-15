import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color color;
  final String? title;
  const SubmitButton({this.onPressed, this.color = Colors.black, this.title = "Submit"});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 10),
        color: color,
        textColor: Colors.white,
        onPressed: onPressed,
        child:  Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(title!,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
