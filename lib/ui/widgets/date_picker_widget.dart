import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  late DateTime _selectedDate;

  final TextEditingController _textEditingController = TextEditingController();

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year),
      lastDate: DateTime(2049),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        if (picked.isAfter(DateTime.now())) {
          _selectedDate = picked;
          _textEditingController.text =
              DateFormat.yMMMMd().format(_selectedDate);
        } else {
          _textEditingController.text = 'selectionner une date valide';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: Colors.grey.shade200),
      child: TextField(
        controller: _textEditingController,
        readOnly: true,
        onTap: () {
          _selectDate(context);
        },
        decoration: const InputDecoration(
          border: InputBorder.none,
          label: Text('Date d\'expiration'),
          hintText: 'Selectionner une date',
          icon: Icon(Icons.calendar_today),
        ),
      ),
    );
  }
}
