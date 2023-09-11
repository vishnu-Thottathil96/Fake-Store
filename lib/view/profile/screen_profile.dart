import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Profile',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Center(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(31, 158, 158, 158),
                  ),
                  height: screenHeight / 1.5,
                  width: screenWidth / 1.1,
                ),
                const Positioned(
                  left: 80,
                  top: 30,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                        'https://im.indiatimes.in/content/2022/Jan/Jacinda-Ardern1_61f262722240a.jpg?w=820&h=540&cc=1'),
                  ),
                ),
                const Positioned(
                  left: 80,
                  top: 300,
                  child: Text(
                    'Jacinda Ardern',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
