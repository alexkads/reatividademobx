import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:reatividademobx/controllers/counterController.dart';
import 'controllers/atividadesController.dart';
import 'pages/homepage.dart';

GetIt getIt = GetIt.instance;

void main() {
  getIt.registerLazySingleton<AtividadesController>(
      () => AtividadesController());
  getIt.registerLazySingleton<CounterController>(() => CounterController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
