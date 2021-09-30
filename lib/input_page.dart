import 'package:beklenen_yasam_suresi/result_page.dart';
import 'package:beklenen_yasam_suresi/user_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_selection.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String seciliCinsiyet;
  double icilenSigara=0.0;
  double sporGunleri=0.0;
  int boy=160;
  int kilo=65;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: Row(
                      children: [
                        RotatedBox(
                            quarterTurns: 3,
                            child: Text('Boy', style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),)
                        ),
                        SizedBox(width: 10,),
                        RotatedBox(
                            quarterTurns: 3,
                            child: Text('$boy', style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),)
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlineButton(
                                borderSide:
                                BorderSide(color:Colors.lightBlue),
                                child:Icon(FontAwesomeIcons.plus, size:10),
                                onPressed: (){
                                  setState(() {
                                    boy++;
                                  });
                                }),
                          ),
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlineButton(
                              borderSide:
                              BorderSide(color:Colors.lightBlue),
                                child:Icon(FontAwesomeIcons.minus, size:10),
                                onPressed: (){
                                  setState(() {
                                    boy--;
                                  });
                                }),
                          ),
                        ],),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Row(
                      children: [
                        RotatedBox(
                            quarterTurns: 3,
                            child: Text('Kilo', style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),)
                        ),
                        SizedBox(width: 10,),
                        RotatedBox(
                            quarterTurns: 3,
                            child: Text('$kilo', style: TextStyle(
                                color: Colors.lightBlue,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),)
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlineButton(
                                  borderSide:
                                  BorderSide(color:Colors.lightBlue),
                                  child:Icon(FontAwesomeIcons.plus, size:10),
                                  onPressed: (){
                                    setState(() {
                                      kilo++;
                                    });
                                  }),
                            ),
                            ButtonTheme(
                              minWidth: 36,
                              child: OutlineButton(
                                  borderSide:
                                  BorderSide(color:Colors.lightBlue),
                                  child:Icon(FontAwesomeIcons.minus, size:10),
                                  onPressed: (){
                                    setState(() {
                                      kilo--;
                                    });
                                  }),
                            ),
                          ],),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Haftada Kaç Gün Spor Yapıyorsunuz?',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${sporGunleri.round()}',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    divisions: 7,
                    value: sporGunleri,
                    //label: '$icilenSigara',
                    onChanged: (double newValue) {
                      setState(() {
                        sporGunleri = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Günde Kaç Sigara İçiyorsunuz?',
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${icilenSigara.round()}',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    min: 0,
                    max: 50,
                    divisions: 50,
                    value: icilenSigara,
                    //label: '$icilenSigara',
                    onChanged: (double newValue) {
                      setState(() {
                        icilenSigara = newValue;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = 'Kadın';
                      });
                    },
                    colorsAll: seciliCinsiyet == 'Kadın'
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: CinsiyetWidget(
                      cinsiyet: 'Kadın',
                      iconData: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: () {
                      setState(() {
                        seciliCinsiyet = 'Erkek';
                      });
                    },
                    colorsAll: seciliCinsiyet == 'Erkek'
                        ? Colors.lightBlue[100]
                        : Colors.white,
                    child: CinsiyetWidget(
                      cinsiyet: 'Erkek',
                      iconData: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonTheme(
            height: 50,
            child: FlatButton(
                color: Colors.white,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                    UserData(kilo:kilo,boy:boy, secilicinsiyet:seciliCinsiyet, sporgunleri:sporGunleri, icilensigara:icilenSigara)
                  )));
                },
                child:
                Text('Hesapla',style: TextStyle(
    color: Colors.black54,
    fontSize: 20,
    fontWeight: FontWeight.bold),
    ),
            ),
          )
        ],
      ),
    );
  }
}
