import 'package:beklenen_yasam_suresi/user_data.dart';
import 'package:flutter/material.dart';
import 'package:beklenen_yasam_suresi/calculate.dart';

class ResultPage extends StatelessWidget {

  final UserData _userData;
  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text(
            'SONUÇ SAYFASI',
            style: TextStyle(color: Colors.black54),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex:8,
                child: Center(child: Text('Beklenen Yaşam Süreniz:'+
                Calculate(_userData).CalculateLife().round().toString() +' Yıl',
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),))),
            Expanded(
              flex:1,
              child: FlatButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Geri Dön',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ));
  }
}
