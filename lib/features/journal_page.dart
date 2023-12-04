import 'package:flutter/material.dart';

class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  State<Journal> createState() => JournalState();
}

class JournalState extends State<Journal> {
  final TextEditingController _messageController = TextEditingController();
  final List<Map<String, dynamic>> _messages = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                "Journal",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ],
          ),
          actions: [
            Builder(
              builder: (context) => InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ],
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/app-logo.png",
                      width: 50,
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Journal",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: const Text('Page 1'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(
                    context,
                    "/Journal",
                  );
                },
              ),
              ListTile(
                title: const Text('Page 2'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(
                    context,
                    "/Journal",
                  );
                },
              ),
            ],
          ),
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
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 10.0,
                              right: 10.0,
                            ),
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.8,
                            ),
                            child: Text(
                              message,
                              style: const TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              //jimar
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
                              hintText: "Insert Content Here",
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
      });
    }
  }
}
