import 'package:flutter/material.dart';
import 'package:multiprovider/providers/employee_provider.dart';
import 'package:multiprovider/view/employee1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<EmployeeProvider>(create: (context) => EmployeeProvider(),)
    ], child: const MaterialApp(
        title: 'Flutter Demo',
        home: EmployeeOne()
    ),);
  }
}

