import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SliderPageState();
  }
}

class SliderPageState extends State<SliderPage> {
  double _valorSlider = 100;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            _createSlider(),
            _checkBox(),
            _createSwitch(),
            Expanded(
              child: _createImage(),
            )
          ],
        ),
      ),
    );
  }

  _createSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'tamanho da imagem',
        //divisions: 20,
        value: _valorSlider,
        min: 10,
        max: 400,
        onChanged: (_blockCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  _createImage() {
    return Image(
      image: NetworkImage('https://encrypted-tbn0.gstatic.com/ima'
          'ges?q=tbn:ANd9GcQM-4ayPTSx9qaSjKF5RX2U3Xvje_3MKkXMbQ&usqp=CAU'),
      fit: BoxFit.contain,
      width: _valorSlider,
    );
  }

  _checkBox() {
    // return Checkbox(
    //     value: _blockCheck,
    //     onChanged: (value) {
    //       setState(() {
    //         _blockCheck = value;
    //       });
    //     });

    return CheckboxListTile(
        value: _blockCheck,
        title: Text('Bloquear Slider'),
        onChanged: (value) {
          setState(() {
            _blockCheck = value;
          });
        });
  }

  _createSwitch() {

    return SwitchListTile(
        value: _blockCheck,
        title: Text('Bloquear Slider'),
        onChanged: (value) {
          setState(() {
            _blockCheck = value;
          });
        });
  }
}
