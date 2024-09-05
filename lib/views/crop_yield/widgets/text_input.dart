import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  const TextInput(
      {super.key,
      required this.onChanged,
      required this.hintText,
      required this.label});
  final Function(String) onChanged;
  final String hintText;
  final String label;
  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(hintText: widget.hintText),
          onChanged: (value) {
            widget.onChanged(controller.text);
          },
        ),
      ],
    );
  }
}
