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
          SizedBox(height: 30),
          _cardType2(),
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
            FlatButton(
              onPressed: () {},
              child: Text('OK'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('Cancel'),
            ),
          ],
        )
      ],
    ),
  );
}

Widget _cardType2() {
  return Card(
    child: Column(
      children: [
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT54P9IHux9WLy7'
              'uo8easFiuawlZ24dhMpWwQ&usqp=CAU'),
          height: 300,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 200),
        ),

        // Image(
        //   image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT54P9IHux9WLy7'
        //       'uo8easFiuawlZ24dhMpWwQ&usqp=CAU'),
        // ),
        Container(padding: EdgeInsets.all(10), child: Text('uma descrição da imagem'))
      ],
    ),
  );
}
