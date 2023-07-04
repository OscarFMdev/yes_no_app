import 'package:flutter/material.dart';

class HisMessageBubble extends StatelessWidget {
  const HisMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 5),

        _ImageBubble(),

        const SizedBox(height: 5)

        // TODO: imagen
      ],
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
        'https://yesno.wtf/assets/yes/14-b57c6dc03aa15a4b18f53eb50d6197ee.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover, // Given the height and width fit the image
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          
          return Container(
            height: 150,
            width: size.width * 0.7,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Ironman is sending an image'),
          );
        },
        ));
  }
}