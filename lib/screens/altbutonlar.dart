import 'package:flutter/material.dart';
import 'package:spotify_ui_design/constants.dart';
import 'package:spotify_ui_design/screens/anasayfa.dart';
import 'package:spotify_ui_design/screens/arama_sayfasi.dart';

class AltButon1 extends StatelessWidget {
  const AltButon1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.blue.withOpacity(0.3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.genius.com/58ae9517a8ade7ab33682b907c6c7de0.220x220x1.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Herkes Konuşur', style: kIcerikMetin),
                    const Text(
                      'Ados feat. Sokrat St & Şanışer',
                    )
                  ],
                ),
              ),
              const SizedBox(width: 45),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.play_arrow,
                  size: 35,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AltButon2 extends StatelessWidget {
  const AltButon2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.home, size: 35),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AnaSayfa();
                          },
                        ),
                      );
                    },
                  ),
                  Text(
                    'Ana Sayfa',
                    style: kIcerikMetin,
                  )
                ],
              ),
            ),
            SizedBox(width: 50),
            Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.search, size: 35),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AramaSayfasi();
                          },
                        ),
                      );
                    },
                  ),
                  Text(
                    'Arama',
                    style: kIcerikMetin,
                  )
                ],
              ),
            ),
            SizedBox(width: 50),
            Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.library_music_outlined, size: 35),
                    onPressed: () {},
                  ),
                  Text(
                    'Kitaplığın',
                    style: kIcerikMetin,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
