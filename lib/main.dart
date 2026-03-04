import 'package:flutter/material.dart';
import 'package:widget_viera_quinonez/config/theme/app_theme.dart';
import 'package:widget_viera_quinonez/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).themeData(),
      home: HomeScreen()
      
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