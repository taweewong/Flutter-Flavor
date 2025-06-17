import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_flavor/app.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(App(flavor: 'Development'));
}