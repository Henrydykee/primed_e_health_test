
import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

import '../models/department.dart';

class DepartmentService {
  Future<List<Department>> fetchDepartments() async {
    try {
      // Load the JSON file
      final String jsonString = await rootBundle.loadString('assets/mock_data.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);

      // Safely access the 'items' list
      final List<dynamic> items = jsonData['items'] as List<dynamic>;

      // Convert each item to a Department object
      return items
          .map((json) => Department.fromJson(json as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Error loading departments: $e');
      rethrow; // Rethrow the error for better error handling upstream
    }
  }
}