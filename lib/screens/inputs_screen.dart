import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final GlobalKey<FormState> myFormKey= GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Andres',
      'last_name': 'Estrada',
      'email': 'andres@google.com',
      'password': '123',
      'role': 'Admin'
    };


    return  Scaffold(
      appBar: AppBar(
        title: const Text("Text Input"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children:  <Widget> [
                CustomInputField(labelText: 'Nombre', helperText: 'Nombre de Usuario', formProperty: 'first_name',formValues: formValues ),
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Apellido', helperText: 'Apellido de Usuario',formProperty: 'last_name',formValues: formValues),              
                const SizedBox(height: 30),
                CustomInputField(labelText: 'Email', helperText: 'Email Usuario', keyboardtype: TextInputType.emailAddress,formProperty: 'email',formValues: formValues),
                const SizedBox(height: 30),
                 CustomInputField(labelText: 'Contraseña', helperText: 'Contraseña Usuario',isPassword: true,formProperty: 'password',formValues: formValues),
                const SizedBox(height: 30),
                 DropdownButtonFormField(items: const [
                  
                  DropdownMenuItem<String> ( value:'Admin',child: Text('Admin')),
                  DropdownMenuItem<String> ( value:'Superuser',child: Text('Superuser')),
                  DropdownMenuItem<String> ( value:'Developer',child: Text('Developer')),
                  DropdownMenuItem<String> ( value:'Jr. Developer',child: Text('Jr. Developer')),

                 ], onChanged: (value){
                          formValues['role'] =   value ?? 'Admin';
                 }),
                const SizedBox(height: 30),
                ElevatedButton(onPressed: (){
                  FocusScope.of(context).requestFocus(FocusNode());
                  if(!myFormKey.currentState!.validate()){
                     print("Formulario no valido");
                  }

                  print(formValues);
                }, child: const SizedBox(
                  width: double.infinity,
                  child: Center(child:  Text("Guardar"))
                  ))
          
              ],
            ),
          ),
        ),
      )      
    );
  }
}

