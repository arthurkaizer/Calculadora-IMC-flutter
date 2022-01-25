import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  const CustomTextFieldWidget({
    required this.hintText,
    this.obscureText = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 50,
       width: 300,
       child: TextField(
         obscureText: obscureText ? true : false,
         decoration: InputDecoration(           
           hintText: hintText,
           filled: true,
           fillColor: Colors.white,
           contentPadding: EdgeInsets.fromLTRB(30, 20, 20, 20),
           border: OutlineInputBorder(
               borderSide: BorderSide.none,
               borderRadius: BorderRadius.circular(50)),
           hintStyle: TextStyle(
             color: Color(0xFF767676),
           ),
         ),
       ),
     );
  }
}
