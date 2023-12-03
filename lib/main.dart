import 'package:b_expence/app.dart';
import 'package:b_expence/features/authentication/models/auth_service.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // AuthService.firebase().initialize();
  runApp(const App());
}
  