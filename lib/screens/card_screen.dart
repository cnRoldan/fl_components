import 'package:flutter/material.dart';

import '../widgets/custom_card_type_1.dart';
import '../widgets/custom_card_type_2.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          children: const [
            //TODO: Recorrer un bucle de un Map<String, String>

            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(imageUrl: ''),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl: 'https://jooinn.com/images/city-landscape-36.jpg',
              footerImage: 'Una ciudad espléndida',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1.jpg',
              footerImage: 'Un hermoso paisaje',
            ),
            SizedBox(height: 100),
          ],
        ));
  }
}
