import 'package:flutter/material.dart';
import 'package:spotify_ui_design/constants.dart';

class Kisayollar extends StatelessWidget {
  const Kisayollar({Key? key}) : super(key: key);

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
                'Kısayollar',
                style: kBaslikMetin,
              ),
            )),
            SizedBox(width: 45),
            Expanded(
              child: Row(
                children: const <Widget>[
                  Icon(Icons.notifications_none, size: 30),
                  SizedBox(width: 30),
                  Icon(Icons.history, size: 30),
                  SizedBox(width: 30),
                  Icon(Icons.settings, size: 30),
                ],
              ),
            ),
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
                            "https://pbs.twimg.com/profile_images/943046122125197312/D6iFJCqf_400x400.jpg",
                      )),
                  Expanded(
                      flex: 1,
                      child: MyContainer(
                        playListIsmi: 'Playlist 2',
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-LE1lHlVN0O_OzrLqxxwO4DZ4w1UZWLppeQ&usqp=CAU",
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
                            "https://cdn.dribbble.com/users/1931394/screenshots/9780708/image.png",
                      )),
                  Expanded(
                      flex: 1,
                      child: MyContainer(
                        playListIsmi: 'Playlist 4',
                        imageUrl:
                            "https://data.whicdn.com/images/295426049/original.jpg",
                      )),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: MyContainer(
                      playListIsmi: 'Playlist 5',
                      imageUrl:
                          "https://i.scdn.co/image/ab67706c0000bebb675ecb8d594d1f55c8746c7d",
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyContainer(
                      playListIsmi: 'Playlist 6',
                      imageUrl:
                          "https://i.scdn.co/image/ab67706c0000bebbc124be6b0e60d7a4fe56dcac",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  String? playListIsmi;
  String? imageUrl;

  MyContainer({this.playListIsmi, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(0)),
      child: Row(
        children: <Widget>[
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(imageUrl.toString()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$playListIsmi', style: kIcerikMetin),
          ),
        ],
      ),
    );
  }
}


// Row(
//           children: <Widget>[
//             Expanded(
//                 flex: 1,
//                 child: MyContainer(
//                   playListIsmi: 'Playlist 1',
//                 )),
//             Expanded(
//                 flex: 1,
//                 child: MyContainer(
//                   playListIsmi: 'Playlist 2',
//                 )),
//           ],
//         ),
//         Row(
//           children: <Widget>[
//             Expanded(
//                 flex: 1,
//                 child: MyContainer(
//                   playListIsmi: 'Playlist 3',
//                 )),
//             Expanded(
//                 flex: 1,
//                 child: MyContainer(
//                   playListIsmi: 'Playlist 4',
//                 )),
//           ],
//         ),
//         Row(
//           children: <Widget>[
//             Expanded(
//               flex: 1,
//               child: MyContainer(
//                 playListIsmi: 'Playlist 5',
//               ),
//             ),
//             Expanded(
//               flex: 1,
//               child: MyContainer(
//                 playListIsmi: 'Playlist 6',
//               ),
//             ),
//           ],
//         ),