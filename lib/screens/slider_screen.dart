import 'package:flutter/material.dart';
import 'package:componentflutter/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and Checks'),
      ),
      body: Column(children: [
        Slider.adaptive(
          min: 50,
          max: 400,
          activeColor: AppTheme.primary,
          value: _sliderValue,
          onChanged: _sliderEnabled
              ? (value) {
                  _sliderValue = value;
                  setState(() {});
                }
              : null,
        ),
        // Checkbox(
        //   value: _sliderEnabled,
        //   onChanged: (value) {
        //     _sliderEnabled = value ?? true;
        //     setState(() {});
        //   },
        // ),
        // Switch(
        //   value: _sliderEnabled,
        //   onChanged: (value) => setState(() {
        //     _sliderEnabled = value;
        //   }),
        // ),
        CheckboxListTile(
          title: const Text('Habilitar Slider'),
          activeColor: AppTheme.primary,
          value: _sliderEnabled,
          onChanged: (value) => setState(() {
            _sliderEnabled = value ?? true;
          }),
        ),
        SwitchListTile.adaptive(
          title: const Text('Habilitar Slider'),
          activeColor: AppTheme.primary,
          value: _sliderEnabled,
          onChanged: (value) => setState(() {
            _sliderEnabled = value;
          }),
        ),
        const AboutListTile(),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                  'https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2022/09/Sonic-png-Transparent.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
      ]),
    );
  }
}
