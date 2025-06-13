import 'package:agsam/view_model/widgets/customm_textfield.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Workers extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();

  Workers({super.key});

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
                    'Add a new Worker',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                CustomTextField(controller: nameController, text: 'Name'),
                SizedBox(height: 20),
                CustomTextField(controller: surnameController, text: 'Surname'),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Known Programme Language',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                ListTile(
                  title: Text('Flutter'),
                  subtitle: Text('Ios and Android'),
                  trailing: Checkbox(value: false, onChanged: (value) {}),
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
        centerTitle: true,
        title: Text(
          'Workers',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Text(
          'No Workers yet',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
