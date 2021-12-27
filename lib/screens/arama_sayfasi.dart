import 'package:flutter/material.dart';
import 'package:spotify_ui_design/constants.dart';
import 'package:spotify_ui_design/screens/altbutonlar.dart';
import 'package:spotify_ui_design/screens/kisayollar.dart';

class AramaSayfasi extends StatelessWidget {
  const AramaSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
              return <Widget>[createSilverAppBar1(), createSilverAppBar2()];
            },
            body: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return oneriSayfasi();
                      },
                    ),
                  ),
                ),
                AltButon1(),
                AltButon2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

SliverAppBar createSilverAppBar1() {
  return SliverAppBar(
    backgroundColor: Colors.black.withOpacity(0.8),
    actions: [
      Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.camera_alt,
            size: 30,
          )),
    ],
    title: Text(
      'Ara',
      style: kBaslikMetin,
    ),
    centerTitle: false,
    expandedHeight: 40,
    floating: false,
    elevation: 0,
    flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return FlexibleSpaceBar(
        collapseMode: CollapseMode.parallax,
        background: Container(),
      );
    }),
  );
}

SliverAppBar createSilverAppBar2() {
  return SliverAppBar(
    backgroundColor: Colors.black.withOpacity(0.8),
    pinned: true,
    title: Container(
      margin: EdgeInsets.all(3),
      height: 40,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.white,
              offset: const Offset(1.1, 1.1),
              blurRadius: 5.0),
        ],
      ),
      child: TextFormField(
        style: TextStyle(color: Colors.black, fontSize: 18),
        decoration: InputDecoration(
          hintText: "Sanatçılar, şarkılar veya podcast'ler",
          hintStyle:
              TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 16),
          icon: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.grey.withOpacity(0.8),
            ),
          ),
        ),
      ),
    ),
  );
}

class AramaSayfasiOneri extends StatelessWidget {
  String? kPlayList;

  AramaSayfasiOneri({this.kPlayList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(12),
              child: Text(
                '$kPlayList',
                style: kBaslikMetin,
              ),
            )),
          ],
        ),
        Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: MyContainer(
                        playListIsmi: 'Playlist 1',
                        imageUrl:
                            'https://i.scdn.co/image/ab67706f00000003b70e0223f544b1faa2e95ed0',
                      )),
                  Expanded(
                      flex: 1,
                      child: MyContainer(
                        playListIsmi: 'Playlist 2',
                        imageUrl:
                            'https://www.technopat.net/sosyal/eklenti/previewfile_1578020944-jpg.894710/',
                      )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: MyContainer(
                        playListIsmi: 'Playlist 3',
                        imageUrl:
                            'https://infonuz.com/wp-content/uploads/2021/09/Spotify-Calma-Listesi-Cool-Kapak-Fotograflari-3-1-scaled.jpg',
                      )),
                  Expanded(
                      flex: 1,
                      child: MyContainer(
                        playListIsmi: 'Playlist 4',
                        imageUrl:
                            'https://infonuz.com/wp-content/uploads/2021/09/Spotify-Calma-Listesi-Cool-Kapak-Fotograflari-8-1-scaled.jpg',
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Column oneriSayfasi() {
  return Column(
    children: <Widget>[
      AramaSayfasiOneri(kPlayList: 'En sevdiklerin'),
      AramaSayfasiOneri(
        kPlayList: 'Tavsiye Edilenler',
      ),
      AramaSayfasiOneri(
        kPlayList: 'Hepsine Göz at',
      ),
      AramaSayfasiOneri(
        kPlayList: 'Farklı Tarzlar',
      ),
    ],
  );
}
