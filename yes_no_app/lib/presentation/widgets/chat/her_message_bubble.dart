import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: screenWidth * 0.60),
            child: Container(
              decoration: BoxDecoration(
                  color: colors.secondary,
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Hola Mundo como estás el día de hoy ',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
          const SizedBox(height: 10),
          _ImageBubble(),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/no/7-331da2464250a1459cd7d41715e1f67d.gif',
        width: size.width * 0.7,
        height: 180,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return Container(
              width: size.width * 0.7,
              height: 180,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: const Text("Mibida está enviando una imagen"),
            );
          }
        },
      ),
    );
  }
}
