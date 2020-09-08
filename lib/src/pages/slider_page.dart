import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State {
  double _intial = 100.0;
  bool _isBlockedCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            _checkBox(),
            _createSwitch(),
            Expanded(child: _createImage())
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigo,
      label: 'Tamaño de la imagen',
      value: _intial,
      min: 10.0,
      max: 400.0,
      onChanged:
          (_isBlockedCheck) ? null : (value) => setState(() => _intial = value),
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //   value: _isBlockedCheck,
    //   onChanged: (value) {
    //     setState(() => _isBlockedCheck = value);
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _isBlockedCheck,
      onChanged: (value) {
        setState(() => _isBlockedCheck = value);
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _isBlockedCheck,
      onChanged: (value) {
        setState(() => _isBlockedCheck = value);
      },
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://toppng.com/uploads/preview/batman-png-11553978515xicf13egxr.png'),
      width: _intial,
      fit: BoxFit.contain,
    );
  }
}
