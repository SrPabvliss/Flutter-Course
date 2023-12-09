import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;
  const HerMessageBubble({super.key, required this.message});

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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(message.text,
                    style: const TextStyle(color: Colors.white)),
              ),
            ),
          ),
          const SizedBox(height: 10),
          if (message.url != null) _ImageBubble(imageUrl: message.url!),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String imageUrl;

  const _ImageBubble({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        imageUrl,
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
