import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: ListTile(
              leading: Icon(
                Icons.photo_album_outlined,
                color: AppTheme.colorIcons,
              ),
              title: Text('Soy un título'),
              subtitle: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Ok')),
                TextButton(onPressed: () {}, child: const Text('Cancel')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
