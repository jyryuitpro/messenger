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
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Design Team',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text('8 members, 5 online'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          'UI',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
              flex: 28,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.38,
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(8.0),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey[300]!),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                              bottomRight: Radius.circular(8),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                'https://dribbble.com/shots/15474874-Messenger-Mobile-Version/attachments/7248290?mode=media',
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 4,
                                                      decoration: BoxDecoration(
                                                        color: Colors.blue,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Dribble',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.blue,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        4),
                                                            child: Text(
                                                              'Banking UI kit for Figma',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            'Banking UI kit for Figma. Designed by Nolan Mango for ZIPL Web Studio. Connect with them on Dribble - the global community for designers and creative professionals.',
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .grey[400],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        4),
                                                            child: Image.network(
                                                                'https://cdn.dribbble.com/users/900341/screenshots/15474874/media/b6afef9541a56d5d95b13a8ee0b57f00.jpg'),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 4),
                                            child: Text(
                                              '9:45',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                              ),
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
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1.5,
                    ),
                    SizedBox(
                      height: 55,
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
                                  border: InputBorder.none,
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
