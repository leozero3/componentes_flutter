import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://lh3.googleusercontent.com/proxy/9crbAdzLLd0U4'
                    'sBIYEIvofqjAwKcawE9cKMAxCoYoF6V'
                    'Y-ca934PMhYDXI6bItcRdpRG_4y3hwWJB7salnPVA_S'
                    'oRnvEa8Ziu7bO4g_mryi0OYXWecf43eexuFU96C0',
              ),
              radius: 25,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 500),
          image: NetworkImage(
          'https://www.webmotors.com.br/wp-content/uploads'
              '/2020/11/18152208/noite-do-opala-00305082014151332-1254x500.jpg',
          ),
        ),
      ),
    );
  }
}
