import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFornmField extends StatelessWidget {
  const CustomTextFornmField({super.key, this.label, this.iconData, this.onPressedSuffixIcon , this.obsecureText=false});
  final String ?label ;
  final IconData  ? iconData ;
  final Function ()? onPressedSuffixIcon ;
  final bool obsecureText ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
obscureText: obsecureText ,
      decoration: InputDecoration(

        suffixIcon: IconButton(onPressed: onPressedSuffixIcon ,icon: Icon(
          iconData
        ),),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          label: Text(label??'', style: TextStyle(
            fontSize: 14
          ),),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(
            color: Colors.blue,
          )),
          enabledBorder: OutlineInputBorder(

          )
      ),
    );
  }
}