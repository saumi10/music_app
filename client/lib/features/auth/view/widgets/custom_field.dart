import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String theHintText;
  final TextEditingController myController;
  final bool isObscureText;
  const CustomField({
    super.key,
    required this.theHintText,
    required this.myController,
    this.isObscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      obscureText: isObscureText,
      validator: (value) {
        if (value!.trim().isEmpty) {
          return "$theHintText is missing";
        }
        return null;
      },
      decoration: InputDecoration(
          hintText:
              theHintText, //HERE  , we're not hardcoding the hint text as different instances of custom field needs different hint text so we're gonna take it from the constructor of custom field when it is called
          hintStyle: TextStyle(fontSize: 13)),
    ); //TextFormField means implementing a form which will validate itself that a text has been enetered or not
  }
}
