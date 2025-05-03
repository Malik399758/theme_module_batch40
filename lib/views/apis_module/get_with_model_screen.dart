
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:theme_module_batch40/models/user_model.dart';
import 'package:http/http.dart' as http;

class GetWithModelScreen extends StatefulWidget {
  const GetWithModelScreen({super.key});

  @override
  State<GetWithModelScreen> createState() => _GetWithModelScreenState();
}

class _GetWithModelScreenState extends State<GetWithModelScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getApi();
  }

  var url = 'https://jsonplaceholder.typicode.com/posts';
  List<UserModel> list = [];

  Future<List<UserModel>> getApi()async{
    try{
      final response = await http.get(Uri.parse(url));
      print('Response ------->${response.body}');
      final responseBody = jsonDecode(response.body) as List;

      print('Response Body ------->$responseBody');

      if(response.statusCode == 200){
       // List<UserModel> data = responseBody;
        setState(() {
       list = responseBody.map((e) => UserModel.fromMap(e as Map<String, dynamic>)).toList();
        });
      }

    }catch(e){
      print('Error -------->$e');
    }
    return list;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get API with model'),
      ),
      body: list.isEmpty ? CircularProgressIndicator() :
          ListView.builder(
              itemCount: list.length,
              itemBuilder: (context,index){
            return ListTile(
              title: Text(list[index].title.toString()),
            );
          })
    );
  }
}

