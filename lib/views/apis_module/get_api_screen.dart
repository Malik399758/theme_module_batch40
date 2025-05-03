


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetApiScreen extends StatefulWidget {
  const GetApiScreen({super.key});

  @override
  State<GetApiScreen> createState() => _GetApiScreenState();
}

class _GetApiScreenState extends State<GetApiScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi();
  }
  var url = 'https://jsonplaceholder.typicode.com/posts';
  List<dynamic> list = [];
  
  Future<List<dynamic>> getApi()async{
    try{
      final response = await http.get(Uri.parse(url));
      final responseBody = jsonDecode(response.body);
      print('response body ------------>$responseBody');
      if(response.statusCode == 200){
        setState(() {
          list.addAll(responseBody);
        });
      }
    }catch(e){
      print('Error --------->$e');
    }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Get Api'),
      ),
      body: list.isEmpty ? CircularProgressIndicator() :
          ListView.builder(itemBuilder: (context,index){
            return ListTile(
              title: Text(list[index]['title']),
            );
          })
    );
  }
}
