import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final FocusNode focuseNode = FocusNode();

    final inputDecoration = InputDecoration(
        hintText: 'End your text with ?',
        hintStyle: const TextStyle(fontWeight: FontWeight.w200),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            final textValue = textController.text;
            print('valor de la caja de texto: $textValue');
            textController.clear();
          },
        ),
        filled: true,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          onTapOutside: (event) {
            focuseNode.unfocus();
          },
          focusNode: focuseNode,
          controller: textController,
          decoration: inputDecoration,
          onFieldSubmitted: (value) {
            print('submit value $value');
            textController.clear();
            focuseNode.requestFocus();
          },
        ),
      ),
    );
  }
}
