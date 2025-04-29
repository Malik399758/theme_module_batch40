

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:theme_module_batch40/main.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Light theme
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,fontWeight: FontWeight.w800,
            color: Colors.blue
          )
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            textStyle: TextStyle(fontSize: 21),
            foregroundColor: Colors.white
          )
        )
      ),


      // Dark theme

      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
              titleLarge: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.w800,
                  color: Colors.white
              )
          ),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.grey
          ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            textStyle: TextStyle(color: Colors.black87),
            foregroundColor: Colors.black
          )
        )

      ),

      // apply

      themeMode: ThemeMode.light,

      home:ThemeScreen() ,
    );
  }
}
class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme module',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Text 1',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Text 2',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Text 3',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Text 4',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Text 5',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text('Text 6',style: Theme.of(context).textTheme.titleLarge,),
            Text('Text 7',style: TextStyle(fontSize: 21,color: Colors.green)),
            Text('Text 8',style: Theme.of(context).textTheme.titleLarge,),
            Text('Text 9',style: Theme.of(context).textTheme.titleLarge,),
            Text('Text 10',style: TextStyle(color: Colors.orange,fontSize: 21)),

            SizedBox(height: 20,),
            
            ElevatedButton(onPressed: (){},
                child: Text('Click Me',))




          ],
        ),
      ),
    );
  }
}
