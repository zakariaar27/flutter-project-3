import 'package:flutter/material.dart';
import 'package:project_3/app/modules/userInput/controller/userinput_controller.dart';

class KTextFromField extends StatelessWidget {
  const KTextFromField({
    super.key,
    required this.controller,required this.labelbox
  });

  final UserInputController controller;
final Widget labelbox;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.textEditingController,
      
      decoration: InputDecoration(
        label:  labelbox,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.purple,width: 3),
        ),
         focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo,width: 3),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.purple,width: 3),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red,width: 3),
        ),
      ),
    );
  }
}
