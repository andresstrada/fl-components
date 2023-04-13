import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stand Lee"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text("SL"),
              
            ),
          )
        ],
      ),
      body:  const Center(
        child:CircleAvatar(
          maxRadius: 90,
              backgroundImage: NetworkImage('https://nationaltoday.com/wp-content/uploads/2022/10/Stan-Lee-640x514.jpg'),
              //child: const Text("SL"),

              
            ),
      ),
    );
  }
}
