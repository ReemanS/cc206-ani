import 'package:flutter/material.dart';

class DashboardEndDrawer extends StatelessWidget {
  const DashboardEndDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(167, 76, 175, 79),
            ),
            child: Center(
              child: Text(
                'Welcome!',
                style: TextStyle(
                    fontSize: 30, color: Colors.white, fontFamily: "Poppins"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Available Features:",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            title: const Text('Marketplace',
                style: TextStyle(fontFamily: "Poppins")),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/marketplace');
            },
          ),
          ListTile(
            title: const Text('Analytics',
                style: TextStyle(fontFamily: "Poppins")),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/analytics');
            },
          ),
          ListTile(
            title:
                const Text('Chat Bot', style: TextStyle(fontFamily: "Poppins")),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/chatbot');
            },
          ),
          ListTile(
            title:
                const Text('Journal', style: TextStyle(fontFamily: "Poppins")),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/Journal');
            },
          ),
        ],
      ),
    );
  }
}
