import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          const Text(
            '© 2025 Open Fashion\nTodos os direitos reservados',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'TenorSans',
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
