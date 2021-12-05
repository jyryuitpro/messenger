import 'package:flutter/material.dart';

class MessengerChatPage extends StatefulWidget {
  const MessengerChatPage({Key? key}) : super(key: key);

  @override
  _MessengerChatPageState createState() => _MessengerChatPageState();
}

class _MessengerChatPageState extends State<MessengerChatPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.keyboard_arrow_left_outlined,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [],
                      ),
                    ),
                    Container(
                      height: 42,
                      width: 42,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1.5,
            ),
            Expanded(
              flex: 25,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.4,
                      child: ListView(),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1.5,
                    ),
                    SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.attach_file_outlined),
                            ),
                            Expanded(
                              child: TextField(
                                controller: _textEditingController,
                                decoration: InputDecoration(
                                  hintText: "Write a message",
                                ),
                                onSubmitted: (value) {
                                  _textEditingController.clear();
                                },
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.sticky_note_2),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.mic_none_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
