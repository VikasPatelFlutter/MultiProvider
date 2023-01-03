import 'package:flutter/material.dart';
import 'package:multiprovider/providers/employee_provider.dart';
import 'package:multiprovider/view/employee2.dart';
import 'package:provider/provider.dart';

class EmployeeOne extends StatefulWidget {
  const EmployeeOne({Key? key}) : super(key: key);

  @override
  State<EmployeeOne> createState() => _EmployeeOneState();
}

class _EmployeeOneState extends State<EmployeeOne> {
  TextEditingController employeeName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<EmployeeProvider>(context);
    return Container(
      child: Column(
        children: [
          TextFormField(controller: employeeName),
          ElevatedButton(onPressed: () {
            data.setEmployeeName(employeeName.text);
            print("${data.getEmployeeName}");
            Navigator.push(context, MaterialPageRoute(builder: (context) => EmployeeTwo(),));
          }, child: Text("Submit 1"))
        ],
      ),
    );
  }
}
