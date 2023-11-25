import 'package:dlc_tracker/ui/widgets/textfields_temp_widget.dart';
import 'package:dlc_tracker/ui/widgets/date_picker_widget.dart';
import 'package:flutter/material.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  @override
  Widget build(BuildContext context) {
    final screenw = MediaQuery.of(context).size.width;
    final screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ajouter un article'),
      ),
      body: ListView(
        children: [
          SizedBox(height: 100, child: Text('test')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: screenw / 1.2,
                    child: inputTxtWidget('', true, 'GENCODE'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: screenw / 1.2,
                    child: inputTxtWidget('', false, 'DESIGNATION'),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: screenw / 1.2,
                    child: DatePickerWidget(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: screenw / 1.2,
                    height: screenh / 8,
                    child: inputNoteWidget(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(onPressed: (){}, child: Text('Enregistrer'))
                ],
              )
            ],
          ),
          Row(),
        ],
      ),
    );
  }
}
