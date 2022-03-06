import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({
    Key? key,
    required this.noOfLikes,
    required this.caption,
    required this.userName,
    required this.dpImage,
    required this.imgUrl,
  }) : super(key: key);

  final String imgUrl;
  final String userName;
  final String dpImage;
  final String caption;
  final int noOfLikes;

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {

  bool liked = false;
  void onLiked(){
    setState(() {
      liked = !liked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.imgUrl),
                  fit: BoxFit.cover,
                ),
              ),
              height: 420.0,
              child: Container(),
            ), //post image
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(widget.dpImage),
                            radius: 28,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            widget.userName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(width: 96,),
                          liked
                              ? InkWell(
                            onTap:()=>onLiked(),
                            child: const Icon(
                              Icons.favorite,
                              size: 32,
                              color: Colors.red,
                            ),
                          )
                              : InkWell(
                            onTap: ()=>onLiked(),
                            child: const Icon(
                              Icons.favorite_outline,
                              size: 32,
                              color: Colors.black38,
                            ),
                          ),
                          const Icon(
                            Icons.send,
                            size: 32,
                            color: Colors.black38,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        widget.caption,
                      ),
                     const  ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/39853/woman-girl-freedom-happy-39853.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        ),
                       trailing: Text("30m",style: TextStyle(
                         color: Colors.black38,
                       ),),
                       title: Text("Mammer",style: TextStyle(fontWeight: FontWeight.bold),),
                       subtitle: Text("Wow! Nice place",style: TextStyle(
                         color: Colors.black38,
                       ),),
                      ),
                      const  ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/39853/woman-girl-freedom-happy-39853.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        ),
                        trailing: Text("30m",style: TextStyle(
                          color: Colors.black38,
                        ),),
                        title: Text("Mammer",style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Text("Wow! Nice place",style: TextStyle(
                          color: Colors.black38,
                        ),),
                      ),
                      /* ListTile(
                        leading:const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/39853/woman-girl-freedom-happy-39853.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        ),
                        title: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(34),
                            ),
                            labelText: 'Write Comment Here...',
                          ),
                        ),
                      ),*/
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
