

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceScreen extends StatefulWidget {
  const SharedPreferenceScreen({super.key});

  @override
  State<SharedPreferenceScreen> createState() => _SharedPreferenceScreenState();
}

class _SharedPreferenceScreenState extends State<SharedPreferenceScreen> {

  int number = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }


  // Shared preference set
  void setData()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt('number', 20);
  }
  
  
  void getData()async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    int? result = sp.getInt('number');
    print('result -------->$result');
    if(result != null){
      setState(() {
        number = result;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(child: Column(
        children: [
          Text(number.toString()),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            setData();
          }, child: Text('set')),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            getData();
          }, child: Text('get'))
        ],
      )),
    );
  }
}
