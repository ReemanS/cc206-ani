import 'package:flutter/material.dart';

class Marketplace extends StatelessWidget {
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
        leading: const Icon(Icons.chevron_left, color: Colors.black),
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
              "Analytics",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: Column(
        
        children: [
          
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
          const SizedBox(height: 12),
          SizedBox(
            height: screenSize.height * 0.8,
            width: screenSize.width * 0.09,

          child: Row(
            children: [
              
              BuildItemBox("carrot","Cabbage" ),
              BuildItemBox("garlic","Cabbage" ),            
              ],
          ),

          
         
           
          ),
        ],
      ),
       
    );
  }

  Column BuildItemBox(String image, String emName, ) {
    return Column( children: [
                 ItemCard(
                itemName: "Cabbage",
                imagePath: "assets/images/$image.png",
              ),
              
              Text("$emName"),
            ],     
            );
  }
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
          height: 160,
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              SizedBox(
                height: 120,
                width: 126,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fitWidth,
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
