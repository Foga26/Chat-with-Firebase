import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Color(0xffc199cd),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Shivam Gupta',
                    style: TextStyle(
                        color: Color(0xffc199cd),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 50, bottom: 40),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.185,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 2),
                    alignment: Alignment.bottomRight,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 193, 170, 231),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: const Text(
                      'Hello, How was the day?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 3),
                    alignment: Alignment.topLeft,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 152, 196, 235),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: const Text(
                      'The day was really good',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Type a message',
                                  hintStyle: TextStyle(color: Colors.black26)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Color(0xFFf3f3f3),
                                borderRadius: BorderRadius.circular(60)),
                            child: Center(
                              child: Icon(
                                Icons.send,
                                color: Color.fromARGB(255, 144, 135, 135),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
