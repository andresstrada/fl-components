import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue=100;
  bool _sliderEnabled=true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Sliders && checks"),
      ),
      body: Column(
          children: [
            Slider(
              min: 50,
              max: 600,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnabled ? (value){
                print(value);
                _sliderValue= value;
                setState(() {                  
                });
             }
             : null
             ),

              /*Checkbox(value: _sliderEnabled, onChanged: (value){

                _sliderEnabled= value ?? true;
                setState(() {
                  
                });
              }),
              */
              CheckboxListTile(
                title: const Text("Habilitar Slider"),
                activeColor: AppTheme.primary,
                value: _sliderEnabled, onChanged: (value)
              {
                _sliderEnabled= value ?? true;
                setState(() {
                  
                });
              }),

/*
              Switch(value: _sliderEnabled, onChanged: (value)
              {
                _sliderEnabled= value;
                setState(() {
                  
                });
              }
              ),
              */

              SwitchListTile.adaptive(
                value: _sliderEnabled, 
                title: const Text("Habilitar Slider"),
                onChanged: (value)
              {
                
                _sliderEnabled= value;
                setState(() {
                  
                });
              }
              ),
              const AboutListTile(),


             Expanded
             (
               child: SingleChildScrollView(
                 child: Image(
                    image: const NetworkImage('https://www.adea.mx/wp-content/uploads/2023/02/servicios-de-logistica-mexico-1024x576.png'),
                    fit: BoxFit.contain,
                    width: _sliderValue,
                  ),
               ),
             ),
            const SizedBox(height: 50)


          ],
      ),
    );
  }
}