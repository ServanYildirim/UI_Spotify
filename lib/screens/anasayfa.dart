import 'package:flutter/material.dart';
import 'package:spotify_ui_design/screens/altbutonlar.dart';
import 'kisayollar.dart';
import 'sana_ozel.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 610,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(height: 35),
                      Kisayollar(),
                      Divider(height: 10),
                      SanaOzel(bolumBasligi: 'Sana özel bölümler'),
                      Divider(height: 15),
                      SanaOzel(bolumBasligi: 'Bu yıl en çok dinlenenler'),
                      Divider(height: 15),
                      SanaOzel(bolumBasligi: 'Senin için hazırlandı'),
                      Divider(height: 15),
                      SanaOzel(bolumBasligi: 'Yakınlarda çalınanlar'),
                      Divider(height: 15),
                      SanaOzel(bolumBasligi: 'Kaldığın yerden devam et'),
                    ],
                  ),
                ),
              ),
              AltButon1(),
              AltButon2(),
            ],
          ),
        ),
      ),
    );
  }
}
