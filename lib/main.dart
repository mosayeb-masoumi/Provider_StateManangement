import 'package:flutter/material.dart';
import 'package:provider_example/clean_arc_provider/presentation/clean_page.dart';
import 'package:provider_example/clean_arc_provider/presentation/clean_provider.dart';
import 'package:provider_example/di.dart';
import 'package:provider_example/example1/example1.dart';

import 'package:provider/provider.dart';
import 'package:provider_example/example2/list_example.dart';
import 'package:provider_example/example2/list_example2.dart';
import 'package:provider_example/example_server/example_server.dart';
import 'package:provider_example/providers/counter_provider.dart';
import 'package:provider_example/providers/list_provider.dart';
import 'package:provider_example/providers/server_provider.dart';
import 'package:provider_example/providers/shopping_card_provider.dart';

void main() {

  setUpDI(); // to set get_it dependency injection
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
      ChangeNotifierProvider(create: (_) => ServerProvider(sl())),
      ChangeNotifierProvider(create: (_) => CleanProvider(sl())),
      // ChangeNotifierProvider(create: (_) => ServerProvider()),
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
      // home: const ListExample(),
      // home: const ListExample2(),
      // home: const ExampleServer(),
      home: const CleanPage(),
    );
  }
}


