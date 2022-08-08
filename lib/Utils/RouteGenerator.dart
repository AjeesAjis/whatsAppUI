import 'package:flutter/material.dart';
import 'package:whatsapp/Utils/Utils.dart';
import 'package:whatsapp/View/WhatsAppUi.dart';

import '../View/test.dart';

class RouteGenerator {
   static Route<dynamic> generateRoute(RouteSettings settings )
   {
      switch(settings.name){
         case Utils.whatsAppUi : return MaterialPageRoute(builder: (_) =>  const WhatsAppUi());
         case Utils.testWidget : return MaterialPageRoute(builder: (_) =>  const TestWidget());
         default:
            return _errorRoute(settings.name!);
      }
   }
   static Route<dynamic> _errorRoute(String routeName) {
      return MaterialPageRoute(builder: (_) {
         return Scaffold(
            appBar: AppBar(
               title: Text('Route error'),
            ),
            body: Center(
               child: Text('No route defined for: $routeName'),
            ),
         );
      });
   }
}