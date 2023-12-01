import 'package:flutter/material.dart';
import 'marketplace.dart';
import 'analytics_page.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "Marketplace",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Right Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            // Add more ListTile widgets for additional items
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 400,
              height: 250,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 51, 243, 33),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Good Morning',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Elon Mahh',
          style: TextStyle(
            color: Colors.white,
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    const SizedBox(width: 8), // Adjust the spacing between the image and text
    Image.network(
      'https://cdn-icons-png.flaticon.com/128/1149/1149378.png',
      width: 50,
      height: 50,
    ),
  ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // First Pair - Dashboard
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Marketplace()));
              },
              child: const Text("Dashboard"),
            ),
            const SizedBox(height: 20),

            // Second Pair - Analytics Page
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AnalyticsPage()));
              },
              child: const Text("Analytics Page"),
            ),
          ],
        ),
      ),
    );
  }
}
