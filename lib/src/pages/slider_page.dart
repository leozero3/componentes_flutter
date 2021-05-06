import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SliderPageState();
  }
}

class SliderPageState extends State<SliderPage> {
  double _valorSlider = 100;

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
            Expanded(child: _createImage(),)
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
        onChanged: (valor) {
          setState(() {
            _valorSlider = valor;
            print(valor);
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
}
