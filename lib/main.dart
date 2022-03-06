import 'package:assignment_1/post.dart';
import 'package:assignment_1/post_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Social Media App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 50,
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightBlueAccent.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 3,
                        offset: const Offset(0,3)// changes position of shadow
                      ),
                    ],
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue.withOpacity(0.8),
                      Colors.lightBlue.withOpacity(0.8),
                      Colors.lightBlueAccent.withOpacity(0.6),
                    ]
                  )
                ),
                  child:  Container(
                    margin: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child:  const Icon(
                Icons.add,
              ),
                  )),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.mail_outline,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
              ),
              label: '',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.blue[600],
          unselectedItemColor: Colors.black38,
          onTap: null,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xffededed),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: Colors.grey[200],
                    ),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/39853/woman-girl-freedom-happy-39853.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        const Text(
                          "@Pranav",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          margin: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 18.0,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.notifications_none,
                    size: 28,
                  ),
                ],
              ), // Top Row
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 12,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PostPage(
                                  noOfLikes: 23,
                                  caption:
                                      "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipis",
                                  dpImage:
                                      "https://images.unsplash.com/photo-1645815431397-c01c1bee0e7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                                  imgUrl:
                                      "https://images.unsplash.com/photo-1646106891137-45e054912427?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80",
                                  isLiked: false,
                                  onLiked: () {},
                                  userName: "Jhonas",
                                )));
                  });
                },
                child: const Post(
                  caption:
                      "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..",
                  dpImage:
                      "https://images.unsplash.com/photo-1645815431397-c01c1bee0e7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  imgUrl:
                      "https://images.unsplash.com/photo-1646106891137-45e054912427?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=386&q=80",
                  userName: "Jhonas",
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PostPage(
                                  noOfLikes: 23,
                                  caption:
                                      "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipis",
                                  dpImage:
                                      "https://images.unsplash.com/photo-1646077104752-6f61bfd5bf4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                                  imgUrl:
                                      "https://images.unsplash.com/photo-1646309364429-cd59d7c2bcd2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                                  isLiked: false,
                                  onLiked: () {},
                                  userName: "Michalle",
                                )));
                  });
                },
                child: const Post(
                  caption:
                      "Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..",
                  dpImage:
                      "https://images.unsplash.com/photo-1646077104752-6f61bfd5bf4a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
                  imgUrl:
                      "https://images.unsplash.com/photo-1646309364429-cd59d7c2bcd2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                  userName: "Michalle",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
