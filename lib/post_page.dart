import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({
    Key? key,
    required this.noOfLikes,
    required this.isLiked,
    required this.caption,
    required this.userName,
    required this.dpImage,
    required this.imgUrl,
    required this.onLiked,
  }) : super(key: key);

  final String imgUrl;
  final String userName;
  final String dpImage;
  final String caption;
  final int noOfLikes;
  final bool isLiked;
  final Function onLiked;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
              height: 450.0,
              child: Container(),
            ), //post image
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 260,),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(dpImage),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            userName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(12.0),
                            child: isLiked
                                ? InkWell(
                              onTap: onLiked(),
                              child: const Icon(
                                Icons.favorite,
                                size: 32,
                                color: Colors.red,
                              ),
                            )
                                : InkWell(
                              onTap: onLiked(),
                              child: const Icon(
                                Icons.favorite_outline,
                                size: 32,
                                color: Colors.black38,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(12.0),
                            child: const Icon(
                              Icons.send,
                              size: 32,
                              color: Colors.black38,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        caption,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
