import 'package:flutter/material.dart';
import 'package:flutter_get_on_net_task/application/app.dart';
import 'package:flutter_get_on_net_task/application/dependency_injection.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized(); //widget binding for dependency injection
  await initAppModule();
  runApp(MyApp());
}

