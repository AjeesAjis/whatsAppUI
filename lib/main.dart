import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Utils/RemoveGlow.dart';
import 'Utils/RouteGenerator.dart';
import 'Utils/Utils.dart';
import 'ViewModel/MessageViewModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MessageViewModel())],
      child: MaterialApp(builder: (context, child) {
        return ScrollConfiguration(
          behavior: RemoveGlowEffect(),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          textSelectionTheme: const TextSelectionThemeData(
              cursorColor: Colors.green,
              selectionHandleColor: Colors.green),
          accentColor: Colors.green,),
          initialRoute: Utils.testWidget,
          onGenerateRoute: RouteGenerator.generateRoute
      ),
    );
  }
}
