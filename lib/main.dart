import 'package:flutter/cupertino.dart';
import 'package:useless_trivia/presentation/myapp.dart';

import 'injection.dart';


void main() {
  configureDependencies();
  runApp(const MyApp());
}