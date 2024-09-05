import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//Ranges of NPK in mg/kg
// Nitrogen (N): 0 to 200 mg/kg
// Phosphorus (P): 0 to 100 mg/kg
// Potassium (K): 0 to 150 mg/kg

class RangeTextField extends StatefulWidget {
  final int? min;
  final int? max;
  final String label;
  final Function(String) onChanged;
  const RangeTextField(
      {super.key,
      this.min = 1,
      this.max = 100,
      required this.label,
      required this.onChanged});

  @override
  State<RangeTextField> createState() => _RangeTextFieldState();
}

class _RangeTextFieldState extends State<RangeTextField> {
  final TextEditingController _controller = TextEditingController();
  // final _formKey = GlobalKey<FormState>();
  final int min = 1; // Minimum value in the range
  final int max = 50; // Maximum value in the range

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 100,
          height: 50,
          child: TextFormField(
            controller: _controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly, // Allow only digits
            ],
            decoration: const InputDecoration(
              // labelText: '${widget.label} (mg/Kg),',
              // labelStyle: const TextStyle(color: greenColor),
              hintText: 'Enter',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a number';
              }
              final intValue = int.tryParse(value);
              if (intValue == null || intValue < min || intValue > max) {
                return 'Please enter a number between $min and $max';
              }
              return null;
            },
            onChanged: (value) {
              // final intValue = (value) ?? widget.min!;
              widget.onChanged(value);
            },
          ),
        ),
      ],
    );
  }
}
