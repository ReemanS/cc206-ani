import 'package:flutter/material.dart';

class Marketplace extends StatelessWidget{
  const Marketplace({super.key});
  
  @override
  Widget build(BuildContext context) {
    //final screenSize = MediaQuery.of(context).size;

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
              icon: Icon(Icons.shopping_basket, color: Colors.black, size: 30.0,
              ), 
              onPressed: () {},
            ),
          ],
        ),
      );
  }
}