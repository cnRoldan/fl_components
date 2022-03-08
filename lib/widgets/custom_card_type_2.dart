import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? footerImage;

  const CustomCardType2({Key? key, required this.imageUrl, this.footerImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior:
          Clip.antiAlias, // Si se sale la imagen, trata de recortarlos.
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.9),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (footerImage != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 20, bottom: 10),
                child: Text(
                    footerImage!)) //Exclamación al final significa que va a forzar a que su valor no sea nulo
          // child: Text(footerImage ?? 'No title')) Si footerImage es null entonces asigna el valor 'No title'
        ],
      ),
    );
  }
}
