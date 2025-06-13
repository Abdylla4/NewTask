import 'package:agsam/view_model/widgets/customm_textfield.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Programmlanguages extends StatelessWidget {
  TextEditingController programLanguageController = TextEditingController();

  Programmlanguages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'New Programm Languages',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  controller: programLanguageController,
                  text: 'Language name',
                ),
                SizedBox(height: 20),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Description'),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {}, child: Text('Add')),
                    TextButton(onPressed: () {}, child: Text('Cancel')),
                  ],
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(
          'Program Languages',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          ' No Praogramma languages yet',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
