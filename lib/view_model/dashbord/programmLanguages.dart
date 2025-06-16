import 'package:agsam/cubit/plan_cubit.dart';
import 'package:agsam/view_model/widgets/customm_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                    TextButton(
                      onPressed: () {
                        context.read<PlanCubit>().addPlan(
                          programLanguageController.text,
                        );
                        programLanguageController.clear();
                        Navigator.pop(context);
                      },
                      child: Text('Add'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Cancel'),
                    ),
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
      body: BlocBuilder<PlanCubit, PlanState>(
        builder: (context, state) {
          if (state is PlanError) {
            return Text(state.message);
          }
          if (state is PlanSuccess) {
            return ListView.builder(
              itemCount: state.plans.length,
              itemBuilder: (context, index) {
                final plan = state.plans[index];
                return Card(
                  child: ListTile(
                    title: Text(plan.planName),
                    textColor: Colors.amber,
                    
                  ),
                );
              },
            );
          }
          return Center(
            child: Text(
              ' No Praogramma languages yet',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
