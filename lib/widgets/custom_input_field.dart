import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardtype;
  final bool isPassword ;
  final String formProperty;
  final Map<String,String> formValues;

  const CustomInputField({
    super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardtype, this.isPassword =false, required this.formProperty, required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardtype ?? keyboardtype,
      obscureText: isPassword,
      onChanged: (value){

        formValues[formProperty]= value;
        
           print('value: $value' );
      },
      validator: (value){
               if(value== null) {
                 return 'Este campo es requerido';
               } else {
                 return  value.length<3? 'Minimo de 3 letras':null;
               }
      },
      autovalidateMode:  AutovalidateMode.onUserInteraction, // puede ser en el form
       decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,        
        suffixIcon: suffixIcon == null ? null:  Icon(suffixIcon), // Icon(Icons.group_outlined),
        //suffix:  Icon(Icons.group_outlined),
        icon: icon == null ? null: Icon(icon), //Icons.assignment_ind_outlined        
       ),
    );
  }
}