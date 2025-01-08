import 'package:flutter/material.dart';
import 'package:primed_e_health_test/providers.dart';
import 'package:provider/provider.dart';
import 'views/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: buildProviders(),
      child: MaterialApp(
        title: 'E-Hospital',
        debugShowCheckedModeBanner: false,
        theme: _buildTheme(),
        home: const LoginScreen(),
      ),
    );
  }



  ThemeData _buildTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      useMaterial3: true,
    );
  }
}
