import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<String> option = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _createItems(),
        children: _createShotItems(),
      ),
    );
  }

  // List<Widget> _createItems() {
  //   List<Widget> lista = [];
  //
  //   for (int opt in option) {
  //     final tempWidget = ListTile(
  //       title: Text(opt.toString()),
  //     );
  //
  //     lista..add(tempWidget)..add(Divider());
  //   }
  //
  //   return lista;
  // }

  List<Widget> _createShotItems() {
    var widgets = option.map((item) {
      return Column(
        children: [

          ListTile(
            title: Text(item + '!'),
            subtitle: Text('dfvdfgjk'),
            leading: Icon(Icons.phone_callback_sharp),
            trailing: Icon(Icons.keyboard),
          ),
          Divider()
        ],
      );
    }).toList();
    return widgets;
  }
}
