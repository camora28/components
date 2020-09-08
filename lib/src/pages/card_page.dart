import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTypeOne(),
          SizedBox(height: 30.0),
          _cardTypeTwo(),
          SizedBox(height: 30.0),
          _cardTypeTwo(),
          SizedBox(height: 30.0),
          _cardTypeTwo(),
          SizedBox(height: 30.0),
          _cardTypeTwo(),
          SizedBox(height: 30.0),
          _cardTypeTwo(),
          SizedBox(height: 30.0),
          _cardTypeTwo(),
        ],
      ),
    );
  }

  Widget _cardTypeOne() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text('Soy el titulo de esta tarjeta'),
              subtitle: Text(
                  'Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu Lorem ipsu '),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Cancelar'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text('Aceptar'),
                  onPressed: () {},
                )
              ],
            )
          ],
        ));
  }

  Widget _cardTypeTwo() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
              image: NetworkImage(
                  'https://www.publicdomainpictures.net/pictures/30000/velka/evening-landscape-13530956185Aw.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300.0,
              fit: BoxFit.cover),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('No tengo idea de que pponer'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
