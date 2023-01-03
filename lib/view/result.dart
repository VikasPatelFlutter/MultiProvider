import 'package:flutter/material.dart';
import 'package:multiprovider/providers/employee_provider.dart';
import 'package:provider/provider.dart';

class ResultEmployee extends StatefulWidget {
  const ResultEmployee({Key? key}) : super(key: key);

  @override
  State<ResultEmployee> createState() => _ResultEmployeeState();
}

class _ResultEmployeeState extends State<ResultEmployee> {
  @override
  Widget build(BuildContext context) {
    var result = Provider.of<EmployeeProvider>(context);
    return Container(
      child: Column(children: [
        Text("${result.getEmployeeName}"),
        Text("${result.getEmloyeeAddress}"),
        Text("${result.user != null ?result.user.data![0].employeeName : ""}")
      ]),
    );
  }
}
