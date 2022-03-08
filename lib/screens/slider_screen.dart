import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 250;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider & Checks')),
      body: Column(children: [
        Slider.adaptive(
            // divisions: 10,
            activeColor: AppTheme.primary,
            min: 50,
            max: 400,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null),
        // Checkbox(
        //     value: _sliderEnabled,
        //     onChanged: (value) {
        //       _sliderEnabled = value ?? true;
        //       setState(() {});
        //     }),
        // CheckboxListTile(
        //     activeColor: AppTheme.primary,
        //     title: const Text('Habilitar Slider'),
        //     value: _sliderEnabled,
        //     onChanged: (value) => setState(() {
        //           _sliderEnabled = value ?? true;
        //         })),
        // Switch(
        //     value: _sliderEnabled,
        //     onChanged: (value) => setState(() {
        //           _sliderEnabled = value ?? true;
        //         })),
        SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
                  _sliderEnabled = value;
                })),
        
        AboutListTile(

        ),

        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage('https://images.genial.ly/56087dee1561e80e9c733f5e/6042c583-c0a0-44ba-9d90-34af5a34960e.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
