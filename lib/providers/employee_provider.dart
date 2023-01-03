import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:multiprovider/models/employee_model.dart';

class EmployeeProvider extends ChangeNotifier{
  String? _employeeName,_employeeAddress;

  EmployeeProvider(){}

  EmployeeModel user=EmployeeModel();

  //SET
  setEmployeeName(String employeeName){
    _employeeName = employeeName;
    notifyListeners();
  }
  SetEmployeeAddress(String employeeAddress){
    _employeeAddress = employeeAddress;
    notifyListeners();
  }

  //GET
  String? get getEmployeeName{
    return _employeeName;
  }
  String? get getEmloyeeAddress{
    return _employeeAddress;
  }

  //API CALL
  getApiData()async{
    var response =await http.get(Uri.parse("https://dummy.restapiexample.com/api/v1/employees"));
    if(response.statusCode == 200){
      var resData = EmployeeModel.fromJson(jsonDecode(response.body));
      print(response);
      user = resData;
    }
  }

}