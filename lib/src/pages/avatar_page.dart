import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.fver2-1.fna.fbcdn.net/v/t1.0-9/30412049_2014121968854569_5733253415664877568_n.jpg?_nc_cat=103&_nc_sid=09cbfe&_nc_eui2=AeGndPmurQL_wxjm79OlDuwz2ls7AlYJYE_aWzsCVglgT33TggHQCTK-WzrTRiF4eKMJU7xlCErEtRTyGf0YBIc9&_nc_ohc=hqwo9_GL_KIAX_q2Trh&_nc_ht=scontent.fver2-1.fna&oh=1fc12beb75f99999039b0e3e9919917c&oe=5F7C0DEB'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://aws.traveler.es/prod/designs/v1/assets/1000x667/21250.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
