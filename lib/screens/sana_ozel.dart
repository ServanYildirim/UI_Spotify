import 'package:flutter/material.dart';
import 'package:spotify_ui_design/constants.dart';

class SanaOzel extends StatelessWidget {
  String? bolumBasligi;

  SanaOzel({this.bolumBasligi});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text('$bolumBasligi', style: kBaslikMetin),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              SyContainer(
                  playListIsmi: 'Playlist 1',
                  imageUrl:
                      'https://cdn.dribbble.com/users/278624/screenshots/4413242/playlist_cover2.png'),
              SyContainer(
                playListIsmi: 'Playlist 2',
                imageUrl:
                    'https://marketplace.canva.com/EAEdeiU-IeI/1/0/1600w/canva-purple-and-red-orange-tumblr-aesthetic-chill-acoustic-classical-lo-fi-playlist-cover-jGlDSM71rNM.jpg',
              ),
              SyContainer(
                playListIsmi: 'Playlist 3',
                imageUrl:
                    'https://marketplace.canva.com/EAEdfw3xPPc/1/0/1600w/canva-pink-sunset-tumblr-aesthetic-love-songs-playlist-cover-IeYIUu1iRHQ.jpg',
              ),
              SyContainer(
                playListIsmi: 'Playlist 4',
                imageUrl:
                    'https://i.scdn.co/image/ab67706f00000003b70e0223f544b1faa2e95ed0',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SyContainer extends StatelessWidget {
  String? playListIsmi;
  String? imageUrl;

  SyContainer({this.playListIsmi, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.red,
            width: 150,
            height: 150,
            child: Image.network(imageUrl.toString()),
          ),
          SizedBox(
            height: 3,
          ),
          Text(playListIsmi.toString(), style: kIcerikMetin),
        ],
      ),
    );
  }
}
