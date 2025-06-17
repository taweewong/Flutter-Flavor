import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class App extends StatelessWidget {
  String flavor;

  App({
    super.key,
    required this.flavor
  });

  @override
  Widget build(BuildContext context) {
    String? baseApi = dotenv.env['BASE_URL'];

    return MaterialApp(
      title: "Flutter Flavors Example",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(flavor),
        ),
        body: Expanded(
            child: Center(
              child: Text(baseApi ?? "Null ja"),
            )
        ),
      ),
    );
  }
}
