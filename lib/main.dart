import 'package:agsam/cubit/plan_cubit.dart';
import 'package:agsam/view/splasScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlanCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splasscreen(),
      ),
    );
  }
}
