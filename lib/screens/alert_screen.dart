import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 0,
            title: const Text("Titulo"),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10) ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Text("este es un mensaje"),
                SizedBox(height: 30),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton(onPressed: ()=>Navigator.pop(context)
              , child: const Text("Cancelar")),
              TextButton(onPressed: ()=>Navigator.pop(context)
              , child: const Text("OK")),
            ],
          );
        });
  }

void displayDialogIOS(BuildContext context) {
   
   showCupertinoDialog(context: context, 
   barrierDismissible: false,
   builder: (context) {
     return CupertinoAlertDialog(
      title: const Text("Dialog cupertino"),
      content:  Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Text("este es un mensaje cupertino"),
                SizedBox(height: 30),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton(onPressed: ()=>Navigator.pop(context)
              , child: const Text("Cancelar")),
              TextButton(onPressed: ()=>Navigator.pop(context)
              , child: const Text("OK"))
            ],

     );
   }   
   );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context),
            //onPressed:  displayDialog, Referencia de Méthodo
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Mostrar alerta",
                style: TextStyle(fontSize: 16),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
          //backgroundColor: AppTheme.primary,
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
