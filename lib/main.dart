import 'package:anaquee/pages/base.dart';
import 'package:anaquee/pages/home_page.dart';
import 'package:anaquee/pages/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            switch (settings.name) {
              case "/":
                return const HomePage();
              case "/base":
                return const Base();
              case "/search":
                return SearchPage(
                  title: settings.arguments as String,
                );
              default:
                return const HomePage();
            }
          },
        );
      },
    );
  }
}
