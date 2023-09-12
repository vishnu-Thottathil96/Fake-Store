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
                        'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?cs=srgb&dl=pexels-masha-raymers-2726111.jpg&fm=jpg'),
                  ),
                ),
                const Positioned(
                  left: 50,
                  top: 300,
                  child: Text(
                    'Sophia Anderson',
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
