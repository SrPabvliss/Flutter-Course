import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});

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
            textController.clear();
            onValue(textValue);
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
            textController.clear();
            focuseNode.requestFocus();
            onValue(value);
          },
        ),
      ),
    );
  }
}
