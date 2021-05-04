import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlert(context),
          child: Text('Mostrar Alerta'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
            shape: StadiumBorder(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_location),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          title: Text('title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('este é um texto de uma caixa de dialogo'),
              FlutterLogo(size: 100),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss alert dialog
              },
            ),
            FlatButton(
              child: Text('OK!'),
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss alert dialog
              },
            )
          ],
        );
      },
    );
  }
}
