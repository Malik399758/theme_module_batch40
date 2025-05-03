
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesScreen1 extends StatefulWidget {
  const SharedPreferencesScreen1({super.key});

  @override
  State<SharedPreferencesScreen1> createState() => _SharedPreferencesScreen1State();
}

class _SharedPreferencesScreen1State extends State<SharedPreferencesScreen1> {

  final nameController = TextEditingController();
  String savedName = '';








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Shared Preference'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: 'Enter name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber
              ),
                onPressed: (){
            }, child: Text('Set',style: TextStyle(),)),
            SizedBox(height: 10,),
            Text('No value saved')
          ],
        ),
      ),
    );
  }
}
