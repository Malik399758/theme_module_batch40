

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
            fontSize: 21,fontWeight: FontWeight.bold,
            color: Colors.green
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black87
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            textStyle: TextStyle(fontSize: 21),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder()
          )
        )
      ),


      // Dark theme
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
            titleLarge: TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.grey,
          ),

          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 21),
                foregroundColor: Colors.black,
              )
          )
      ),



      // apply
      themeMode: ThemeMode.light,
      home:ThemeScreen1() ,
    );
  }
}
class ThemeScreen1 extends StatefulWidget {
  const ThemeScreen1({super.key});

  @override
  State<ThemeScreen1> createState() => _ThemeScreen1State();
}

class _ThemeScreen1State extends State<ThemeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Theme module',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Text 1',style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.w700),),
            Text('Text 2',style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.w700)),
            Text('Text 3',style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.w700)),
            Text('Text 4',style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.w700)),
            Text('Text 5',style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.w700)),

            SizedBox(height: 30,),

            Text('Text 6',style: TextStyle(color: Colors.red,fontSize: 30)),
            Text('Text 7',style: Theme.of(context).textTheme.titleLarge,),
            Text('Text 8',style: TextStyle(color: Colors.red,fontSize: 30)),
            Text('Text 9',style: Theme.of(context).textTheme.titleLarge,),
            Text('Text 10',style: Theme.of(context).textTheme.titleLarge,),

            SizedBox(height: 30,),
            
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
                onPressed: (){}, child: Text('Click Me'))

          ],
        ),
      ),
    );
  }
}

