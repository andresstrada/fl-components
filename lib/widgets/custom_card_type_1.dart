import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primary),
            title: const Text("Titulo"),
            subtitle: const Text(
                "Officia non anim ullamco minim anim. Fugiat dolore tempor reprehenderit excepteur pariatur. Ut elit dolore culpa eu et laboris anim eu nulla incididunt officia enim sint excepteur."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                TextButton(onPressed: () {}, child: const Text("OK"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
