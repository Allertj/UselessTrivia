import 'package:flutter/cupertino.dart';
import 'package:useless_trivia/presentation/app_widget.dart';
import 'injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(MyApp());
}