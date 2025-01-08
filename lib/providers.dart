
import 'package:primed_e_health_test/viewmodels/auth_viewmodel.dart';
import 'package:primed_e_health_test/viewmodels/departments_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> buildProviders() {
  return [
    ChangeNotifierProvider(create: (_) => AuthViewModel()),
    ChangeNotifierProvider(create: (_) => DepartmentsViewModel()),
  ];
}