import 'package:flutter/material.dart';
import 'package:widget_viera_quinonez/config/router/app_router.dart';
import 'package:widget_viera_quinonez/config/theme/app_theme.dart';
import 'package:widget_viera_quinonez/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).themeData(),
      routerConfig: appRouter,
      
      /*Scaffold(
        body: Center(
          child:
          FilledButton( onPressed: (){
            print('Jonathan Viera');
          }, 
          child: Text('Viera Quiñonez'),
          ),
          ),
        ),*/
      );
  } 
} 