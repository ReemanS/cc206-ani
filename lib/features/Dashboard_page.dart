import 'package:cc206_ani/components/clouds.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        toolbarHeight: 80,
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
              _openEndDrawer();
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
              title: const Text('Chat Bot',
                  style: TextStyle(fontFamily: "Poppins")),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/chatbot');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(167, 76, 175, 79),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color.fromARGB(255, 70, 184, 60),
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
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Good Morning,',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Elon Mah',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 48,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Poppins",
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(width: 10),
                              Image.network(
                                'https://cdn-icons-png.flaticon.com/128/1149/1149378.png',
                                width: 50,
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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

                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed((context), '/marketplace');
                        },
                        child: Container(
                          width: 100,
                          height: 120,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(166, 76, 175, 79),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(255, 70, 184, 60),
                              width: 3,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Market.png',
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Market Place',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed((context), '/chatbot');
                        },
                        child: Container(
                          width: 100,
                          height: 120,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(166, 76, 175, 79),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(255, 70, 184, 60),
                              width: 3,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Chat.png',
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Chat Bot',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 200,
                                child: const Center(
                                  child: Text(
                                    'Sorry! This feature is not available yet.',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: "Poppins",
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          width: 100,
                          height: 120,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(166, 76, 175, 79),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(255, 70, 184, 60),
                              width: 3,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Journal.png',
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Journal',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/analytics');
                        },
                        child: Container(
                          width: 100,
                          height: 120,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(166, 76, 175, 79),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(255, 70, 184, 60),
                              width: 3,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Analytics.png',
                                width: 100,
                                height: 100,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Analytics',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Container(
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           InkWell(
                //             onTap: () {
                //               Navigator.pushNamed((context), '/marketplace');
                //             },
                //             child: Container(
                //               width: 100,
                //               height: 120,
                //               decoration: BoxDecoration(
                //                 color: const Color.fromARGB(166, 76, 175, 79),
                //                 borderRadius: BorderRadius.circular(15),
                //                 border: Border.all(
                //                   color: Color.fromARGB(255, 70, 184, 60),
                //                   width: 3,
                //                 ),
                //               ),
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Image.asset(
                //                     'assets/images/Market.png',
                //                     width: 50,
                //                     height: 50,
                //                   ),
                //                   const SizedBox(height: 5),
                //                   const Text(
                //                     'Market Place',
                //                     style: TextStyle(
                //                       fontSize: 12,
                //                       fontWeight: FontWeight.bold,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //           SizedBox(width: 10),
                //           InkWell(
                //             onTap: () {},
                //             child: Container(
                //               width: 100,
                //               height: 120,
                //               decoration: BoxDecoration(
                //                 color: const Color.fromARGB(166, 76, 175, 79),
                //                 borderRadius: BorderRadius.circular(15),
                //                 border: Border.all(
                //                   color: Color.fromARGB(255, 70, 184, 60),
                //                   width: 3,
                //                 ),
                //               ),
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Image.asset(
                //                     'assets/images/Chat.png',
                //                     width: 50,
                //                     height: 50,
                //                   ),
                //                   SizedBox(height: 5),
                //                   Text(
                //                     'Chat Bot',
                //                     style: TextStyle(
                //                       fontSize: 12,
                //                       fontWeight: FontWeight.bold,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //       SizedBox(height: 10),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: [
                //           InkWell(
                //             onTap: () {},
                //             child: Container(
                //               width: 100,
                //               height:
                //                   120, // Increased height to accommodate both image and text
                //               decoration: BoxDecoration(
                //                 color: const Color.fromARGB(166, 76, 175, 79),
                //                 borderRadius: BorderRadius.circular(15),
                //                 border: Border.all(
                //                   color: Color.fromARGB(255, 70, 184, 60),
                //                   width: 3,
                //                 ),
                //               ),
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Image.asset(
                //                     'assets/images/Journal.png',
                //                     width: 50,
                //                     height: 50,
                //                   ),
                //                   SizedBox(height: 5),
                //                   Text(
                //                     'Journal',
                //                     style: TextStyle(
                //                       fontSize: 12,
                //                       fontWeight: FontWeight.bold,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //           SizedBox(width: 10),
                //           InkWell(
                //             onTap: () {
                //               Navigator.push(
                //                   context,
                //                   MaterialPageRoute(
                //                       builder: (context) => AnalyticsPage()));
                //             },
                //             child: Container(
                //               width: 100,
                //               height:
                //                   120, // Increased height to accommodate both image and text
                //               decoration: BoxDecoration(
                //                 color: const Color.fromARGB(166, 76, 175, 79),
                //                 borderRadius: BorderRadius.circular(15),
                //                 border: Border.all(
                //                   color: Color.fromARGB(255, 70, 184, 60),
                //                   width: 3,
                //                 ),
                //               ),
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Image.asset(
                //                     'assets/images/Analytics.png',
                //                     width: 50,
                //                     height: 50,
                //                   ),
                //                   SizedBox(height: 5),
                //                   Text(
                //                     'Analytics',
                //                     style: TextStyle(
                //                       fontSize: 12,
                //                       fontWeight: FontWeight.bold,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
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
          ],
        ),
      ),
    );
  }
}
