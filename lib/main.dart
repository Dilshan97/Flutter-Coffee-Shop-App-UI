import 'package:coffee_app/common/app_routes.dart';
import 'package:coffee_app/common/route_generator.dart';
import 'package:coffee_app/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Welcome(),
      initialRoute: AppRoutes.detail,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
