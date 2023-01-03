import 'package:flutter/material.dart';
import 'package:multiprovider/providers/employee_provider.dart';
import 'package:multiprovider/view/result.dart';
import 'package:provider/provider.dart';

class EmployeeTwo extends StatefulWidget {
  const EmployeeTwo({Key? key}) : super(key: key);

  @override
  State<EmployeeTwo> createState() => _EmployeeTwoState();
}

class _EmployeeTwoState extends State<EmployeeTwo> {
  TextEditingController employeeAddress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<EmployeeProvider>(context);
    return Container(
      child: Column(
        children: [
          TextFormField(controller: employeeAddress),
          ElevatedButton(
              onPressed: () {
                data.setEmployeeName(employeeAddress.text);
                print("${data.getEmloyeeAddress}");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultEmployee(),
                    ));
              },
              child: Text("Submit 2"))
        ],
      ),
    );
  }
}
