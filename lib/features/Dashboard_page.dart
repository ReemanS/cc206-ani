import 'package:flutter/material.dart';
import 'marketplace.dart';
import 'analytics_page.dart';


class Clouds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        // Left column with an image
        Column(
  mainAxisAlignment: MainAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: [
    Padding(
      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
      child: Image.network(
        'https://cdn-icons-png.flaticon.com/128/414/414825.png',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    ),
  ],
),
        
        // Center column with two rows of text
        Column(
          mainAxisSize: MainAxisSize.min,
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '11:11',
              style: TextStyle(
                fontSize: 35,
                fontFamily: 'Readex Pro',
                color: Colors.black,
              ),
            ),
            Text(
              'Mon, May 29',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Readex Pro',
                color: Colors.black,
              ),
            ),
          ],
        ),
        
        // Right column with one row of text
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'PM',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Readex Pro',
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


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
              "Dashboard",
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
                color: Color.fromARGB(255, 0, 0, 0),
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
     Padding(
   padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
  child: Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(167, 76, 175, 79),
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: Color.fromARGB(255, 70, 184, 60),
        width: 3,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text and Cloud widget on the left side
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
                  SizedBox(height: 1), // Adjust the vertical spacing
                  Row(
                    children: [
                      Text(
                        'Elon Mah',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Empty container for spacing or any other widget you may want to add
              Container(width: 10),
              // Image on the right side
              Image.network(
                'https://cdn-icons-png.flaticon.com/128/1149/1149378.png',
                width: 50,
                height: 50,
              ),
            ],
          ),
        ),
        // Clouds widget below the second row
        Center(
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: InkWell(
        onTap: () {
          // Add your interactive behavior here
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Clouds(),
        ),
      ),
    ),
  ),
),
      ],
      
    ),
    
  ),
  
),





      const SizedBox(height: 20),

      // First Pair - Dashboard
      Container(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

         InkWell(
  onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Marketplace()));
  },
  child: Container(
    width: 100,
    height: 120, // Increased height to accommodate both image and text
    decoration: BoxDecoration(
       color: const Color.fromARGB(166, 76, 175, 79),
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: Color.fromARGB(255, 70, 184, 60),
        width: 3,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/Market.png',
          width: 50,
          height: 50,
        ),
        SizedBox(height: 5),
        Text(
          'Market Place',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),
          SizedBox(width: 10),


        InkWell(
  onTap: () {
   
  },
  child: Container(
    width: 100,
    height: 120, 
    decoration: BoxDecoration(
      color: const Color.fromARGB(166, 76, 175, 79),
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: Color.fromARGB(255, 70, 184, 60),
        width: 3,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/Chat.png',
          width: 50,
          height: 50,
        ),
        SizedBox(height: 5),
        Text(
          'Chat Bot',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),


        ],
      ),
      SizedBox(height: 10),


      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

           InkWell(
  onTap: () {

  },
  child: Container(
    width: 100,
    height: 120, // Increased height to accommodate both image and text
    decoration: BoxDecoration(
      color: const Color.fromARGB(166, 76, 175, 79),
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: Color.fromARGB(255, 70, 184, 60),
        width: 3,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/Journal.png',
          width: 50,
          height: 50,
        ),
        SizedBox(height: 5),
        Text(
          'Journal',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),
          SizedBox(width: 10),


           InkWell(
  onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context) => AnalyticsPage()));
  },
  child: Container(
    width: 100,
    height: 120, // Increased height to accommodate both image and text
    decoration: BoxDecoration(
       color: const Color.fromARGB(166, 76, 175, 79),
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: Color.fromARGB(255, 70, 184, 60),
        width: 3,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/Analytics.png',
          width: 50,
          height: 50,
        ),
        SizedBox(height: 5),
        Text(
          'Analytics',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  ),
),
        ],
      ),
    ],
  ),
),
      // ElevatedButton(
      //   style: ButtonStyle(
      //     padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
      //   ),
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => Marketplace()));
      //   },
      //   child: const Text("Dashboard"),
      // ),
      // const SizedBox(height: 20),

      // // Second Pair - Analytics Page
      // ElevatedButton(
      //   style: ButtonStyle(
      //     padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
      //   ),
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) => AnalyticsPage()));
      //   },
      //   child: const Text("Analytics Page"),
      // ),
    ],
  ),
),

    );
  }
}
