import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: screenWidth * 0.60),
            child: Container(
              decoration: BoxDecoration(
                  color: colors.primary,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Soy mi propio mensaje ',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
