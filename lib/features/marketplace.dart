import 'package:flutter/material.dart';

class Marketplace extends StatelessWidget{
  const Marketplace({super.key});
  
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

      return Scaffold(
        backgroundColor: const Color(0xFFFDFAF4),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          toolbarHeight: 80,
          leading: const Icon(Icons.chevron_left, color: Colors.black, size: 50.0,),
          elevation: 0,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Image.asset("assets/logo.png",
                 width: 50,
                ),
          const SizedBox(width: 5),
          const Text(
              "Marketplace",
              style: TextStyle(color: Colors.black),
          ),
          ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_basket, color: Colors.black, size: 30.0,
              ), 
              onPressed: () {},
            ),
          ],
        ),

        body: Column(
        
        children: [
          
           Center( 
            child: SizedBox(
              width: screenSize.width * 0.9,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),

          Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              
            RichText(text: const TextSpan(
              
                      text: "Crops",
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                      )
                    ),
               const Text("Fertilizer",
              style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
              ),
            
              const Text("Seeds",
              style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
              ),
            ]
          ),


         
            
         Expanded(
          child: SingleChildScrollView(
           child: Column(
                    children: [
                      const SizedBox(height: 41),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("onion", "Onion"),
                          ),
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("cucumber", "Cucumber"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 160), // Add spacing between the two rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("rice", "Rice"),
                          ),
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("carrots", "Carrots"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 160), // Add spacing between the two rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("cabbage", "Cabbage"),
                          ),
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("potato", "Potato"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 160), // Add spacing between the two rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("tomato", "Tomato"),
                          ),
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("garlic", "Garlic"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 160), // Add spacing between the two rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("rice", "Rice"),
                          ),
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("carrots", "Carrots"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 160), // Add spacing between the two rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("rice", "Rice"),
                          ),
                          SizedBox(
                            height: 40,
                            width: 180,
                            child: BuildItemBox("carrots", "Carrots"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 170),
                    ],
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

 // ignore: non_constant_identifier_names
 Column BuildItemBox(String image, String emName, ) {
    return Column( children: [
                 ItemCard(
                itemName: "Cabbage",
                imagePath: "assets/$image.png",
              ),
              
              // ignore: unnecessary_string_interpolations
              Text("$emName"),
            ],     
            );
  }


class ItemCard extends StatelessWidget {
  final String itemName;
  final String imagePath;


  const ItemCard({
    super.key,
    required this.itemName,
    required this.imagePath,
  
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Card(
      color: const Color(0xFFD1F0BB),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: InkWell(
        onTap: () {},
        splashColor: Colors.green,
        child: Container(
          height: 170,
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              SizedBox(
                height: 130,
                width: 126,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 2),
              Table(
                columnWidths: <int, TableColumnWidth>{
                  0: FixedColumnWidth(screenSize.width * 0.38),
                  1: const IntrinsicColumnWidth(flex: 1),
                },
               
              )
            ],
          ),
        ),
      ),
    );
  }
}
