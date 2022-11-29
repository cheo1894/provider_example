import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/pages/form.dart';
import 'package:provider_example/pages/information.dart';
import 'package:provider_example/pages/listData.dart';
import 'package:provider_example/providers/store.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: ((_) => Store()))],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'form',
      routes: {
        'form': (_) => FormProvider(),
        'information': (_) => InformationProvider(),
        'list': (_) => ListDataProvider()
      },
    );
  }
}
