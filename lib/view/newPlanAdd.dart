import 'package:agsam/view_model/widgets/customm_textfield.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Newplanadd extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  Newplanadd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New PLan Add',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          CustomTextField(controller: nameController, text: 'Plans name'),
          SizedBox(height: 10),
          ListTile(
            title: Text(
              'Start date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.calendar_month),
            subtitle: Text('11/06/2025'),
          ),
          SizedBox(height: 10),

          ListTile(
            title: Text(
              'Ended date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.calendar_month),
            subtitle: Text('11/08/2025'),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                'Workers in the project :',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            trailing: Checkbox(value: false, onChanged: (value) {}),
            title: Text(
              'Aman Amanow',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Add the Plan'),
            ),
          ),
        ],
      ),
    );
  }
}
