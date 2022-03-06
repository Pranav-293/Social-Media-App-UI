import 'package:assignment_1/post_page.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post(
      {Key? key,
      required this.caption,
      required this.dpImage,
      required this.imgUrl,
      required this.userName})
      : super(key: key);

  final String imgUrl;
  final String dpImage;
  final String userName;
  final String caption;

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;
  int noOfLikes = 23;

  void onLiked() {
    setState(() {
      isLiked = !isLiked;
      if (isLiked) {
        noOfLikes++;
      } else {
        noOfLikes--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(widget.imgUrl),
              fit: BoxFit.cover,
            ),
          ),
          height: 480.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.2),
                          ),
                          child: isLiked
                              ? InkWell(
                                  onTap: onLiked,
                                  child: const Icon(
                                    Icons.favorite,
                                    size: 32,
                                    color: Colors.red,
                                  ),
                                )
                              : InkWell(
                                  onTap: onLiked,
                                  child: const Icon(
                                    Icons.favorite_outline,
                                    size: 32,
                                    color: Colors.white,
                                  ),
                                ),
                        ), // Like Icon
                        Text(
                          noOfLikes.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ), // No. of Likes
                        const SizedBox(
                          height: 22.0,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.comment,
                            size: 32,
                            color: Colors.white,
                          ),
                        ), //Comment Icon
                        const SizedBox(
                          height: 18.0,
                        ),
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.send,
                            size: 32,
                            color: Colors.white,
                          ),
                        ), // Send Icon
                      ],
                    ), // Side Icons
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(widget.dpImage),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          widget.userName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      widget.caption,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
