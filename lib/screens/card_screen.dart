
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Tarjetas"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: <Widget>[
           CustomCardType1(),
           SizedBox(height: 10),
           CustomCardType2(imageUrl: 'https://rigov.org/ImageRepository/Document?documentId=15235',name: 'Paisaje',),
           SizedBox(height: 10),
           CustomCardType2(imageUrl: 'https://d150u0abw3r906.cloudfront.net/wp-content/uploads/2021/10/image2-2.png'),
           SizedBox(height: 10),         
           CustomCardType2(imageUrl: 'https://d150u0abw3r906.cloudfront.net/wp-content/uploads/2021/10/image2-2.png'),
           SizedBox(height: 10),
           CustomCardType2(imageUrl: 'https://www.adea.mx/wp-content/uploads/2022/07/adea_mexico_administracion_documental-1024x922.jpg'),
           SizedBox(height: 10),
           CustomCardType2(imageUrl: 'https://www.adea.mx/wp-content/uploads/2022/07/adea_mx_warehouse_-1024x711.jpg'),
           SizedBox(height: 10),
           CustomCardType2(imageUrl: 'https://www.adea.mx/wp-content/uploads/2022/07/adea_mexico_transformacion_digital-1024x721.jpg', name :'Mail Room'),           

        ],
      )
    );
  }
}

