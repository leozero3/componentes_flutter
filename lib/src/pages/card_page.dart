import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _cartType1(),
        ],
      ),
    );
  }
}

Widget _cartType1() {
  return Card(
    child: Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.photo_album,
            color: Colors.blue,
          ),
          title: Text('titulo deste card'),
          subtitle: Text('subtitulo deste card'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(onPressed: (){}, child: Text('OK')),
            FlatButton(onPressed: (){}, child: Text('Cancel'))
          ],
        )
      ],
    ),
  );
}
