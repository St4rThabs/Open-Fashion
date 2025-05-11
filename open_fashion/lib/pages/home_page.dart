import 'package:flutter/material.dart';
import 'package:open_fashion/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(
                  'assets/Banner.png',
                  width: screenWidth,
                  fit: BoxFit.fitWidth,
                ),
                Positioned(
                  bottom: 43,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Main(categoryGrid: 0),
                          ),
                        );
                      },
                      style: TextButton.styleFrom(
                        minimumSize: const Size(200, 30),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 18,
                        ),
                        backgroundColor: const Color.fromARGB(40, 0, 0, 0),
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'TenorSans',
                        ),
                      ),
                      child: const Text("EXPLORE COLLECTION"),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
