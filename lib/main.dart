import 'package:flutter/material.dart';
import 'package:provider_example/example1/example1.dart';

import 'package:provider/provider.dart';
import 'package:provider_example/example2/list_example.dart';
import 'package:provider_example/providers/counter_provider.dart';
import 'package:provider_example/providers/list_provider.dart';
import 'package:provider_example/providers/shopping_card_provider.dart';

void main() {

  runApp(project_providers());

}

class project_providers extends StatelessWidget {
  const project_providers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCard()),
      ChangeNotifierProvider(create: (_) => ListProvider()),
    ], child: MyApp() ,);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // home: const Example1(),
      home: const ListExample(),
    );
  }
}


