import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> restaurants = [
    // Some restaurants that ussually i go for lunch. (2022)
    'McDonald\'s',
    'KFC',
    'Pizza Hut',
    'Subway',
    'Burger King',
    '4 Fingers',
    'KyoChon',
    'Cook Yourself',
    'Coborroy',
    'Nia',
    'Mak Aji',
    'Mamak',
    'Nasi Kukus',
    'Nasi Goreng Ayam',
    'MarryBrown',
    'Nasi Bukit',
    'Teruna Desa',
    'Deli Thai',
    'Kedai TomYam',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Container(
          height: MediaQuery.of(context).size.height * 0.35,
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'What do you want to eat',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'for Lunch Today?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                restaurants[currentIndex],
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  updateIndex();
                },
                child: Text(
                  'Pick Restaurant',
                  style: TextStyle(fontSize: 20),
                ),
                color: Colors.amber,
                textColor: Colors.white,
              ),
            ],
          ),
        )),
      ),
    );
  }

  void updateIndex() {
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState(() {
      currentIndex = index;
    });
  }
}
