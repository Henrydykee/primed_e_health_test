import 'package:flutter/foundation.dart';
import '../core/models/department.dart';
import '../core/services/department_service.dart';

class DepartmentsViewModel with ChangeNotifier {
  final DepartmentService _departmentService = DepartmentService();
  List<Department> _departments = [];
  bool _isLoading = false;

  List<Department> get departments => _departments;
  bool get isLoading => _isLoading;

  Future<void> fetchDepartments() async {
    _isLoading = true;
    notifyListeners();

    try {
      _departments = await _departmentService.fetchDepartments();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}