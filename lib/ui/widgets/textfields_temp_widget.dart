import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:dlc_tracker/model/item_data_model.dart';

inputTxtWidget(String hintText, bool isNumber, String fieldLabel) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.grey.shade200),
    child: TextField(
      decoration: InputDecoration(
        label: Text(fieldLabel),
        hintText: hintText,
        border: InputBorder.none,
      ),
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
    ),
  );
}

inputNoteWidget() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.grey.shade200),
    child: const TextField(
      expands: true,
      maxLines: null,
      minLines: null,
      decoration: InputDecoration(
        label: Text('Remarque'),
        border: InputBorder.none,
      ),
    ),
  );
}

itemCard(ItemDataModel item) {
  DateFormat dateFormatter = DateFormat('yyyy-MM-dd');
  return Card(
    child: Column(
      children: [
        ListTile(
          leading: const Icon(Icons.storefront_outlined),
          title: Text(item.designation),
          subtitle: Text(item.gencode.toString()),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'date d\'expiration : ${dateFormatter.format(item.expiryDate)}',
            style: TextStyle(color: Colors.black.withOpacity(0.6)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Traité'),
            ),
          ],
        )
      ],
    ),
  );
}
