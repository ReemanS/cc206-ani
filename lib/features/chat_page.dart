import 'package:flutter/material.dart';

class Chatbot extends StatefulWidget {
  const Chatbot({Key? key}) : super(key: key);

  @override
  State<Chatbot> createState() => _Chatbot_State();
}

class _Chatbot_State extends State<Chatbot> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, dynamic>> _messages = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFFDFAF4),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          toolbarHeight: 80,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            ),
          ),
          elevation: 0,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/app-logo.png",
                width: 50,
              ),
              const SizedBox(width: 5),
              const Text(
                "Chatbot",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          actions: [
            InkWell(
              onTap: () {
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.history,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(3.0),
                child: ListView.builder(
                  itemCount: _messages.length,
                  itemBuilder: (context, index) {
                    final message = _messages[index]['message'];
                    final isSent = _messages[index]['isSent'];

                    return ListTile(
                      title: Row(
                        mainAxisAlignment: isSent
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 10.0,
                                right: 10.0,
                                top: 5.0,
                                bottom: 5.0,
                              ),
                              padding: const EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                color: isSent ? Colors.green : Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Text(
                                message,
                                style: TextStyle(
                                  color: isSent ? Colors.white : Colors.black,
                                ),
                                textAlign:
                                    isSent ? TextAlign.right : TextAlign.left,
                              ),
                            ),
                          ),
                          if (isSent)
                            Container(
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                'assets/images/app-logo.png',
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            // Input area
            Container(
              margin: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 12.0),
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          child: TextField(
                            controller: _messageController,
                            decoration: const InputDecoration(
                              hintText: "Talk to Farmer's Chatbot",
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.mic),
                        onPressed: () {},
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () {
                            _sendMessage(isSent: true);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendMessage({required bool isSent}) {
    String message = _messageController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        _messages.add({'message': message, 'isSent': isSent});
        _messageController.clear();
        }
      );
    }
  }
}
