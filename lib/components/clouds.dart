import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class Clouds extends StatefulWidget {
  const Clouds({super.key});

  @override
  State<Clouds> createState() => _CloudsState();
}

class _CloudsState extends State<Clouds> {
  late Timer _timer;
  late DateTime _currentTime;

  void _getCurrentTime() {
    setState(() {
      _currentTime = DateTime.now();
    });
  }

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    _timer = Timer.periodic(
      const Duration(seconds: 30),
      (Timer t) => _getCurrentTime(),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://cdn-icons-png.flaticon.com/128/414/414825.png',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                DateFormat('h:mm').format(_currentTime),
                style: const TextStyle(
                  fontSize: 48,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
              Text(
                DateFormat('EEEE, MMM d').format(_currentTime),
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                DateFormat('a').format(_currentTime),
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
