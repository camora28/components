import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Mostar Alerta'),
            color: Colors.blue,
            onPressed: () => _showAlert(context),
            textColor: Colors.white,
            shape: StadiumBorder()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titúlo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Esté es el contenido de la caja negra'),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }
}
