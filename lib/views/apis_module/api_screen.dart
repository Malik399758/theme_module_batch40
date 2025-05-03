/*
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  var url = 'https://jsonplaceholder.typicode.com/posts';

  // ✅ Return the data directly, no need for the list variable
  Future<List<dynamic>> getApi() async {
    try {
      final response = await http.get(Uri.parse(url));
      final responseBody = json.decode(response.body);

      if (response.statusCode == 200) {
        return responseBody; // Return the data directly
      }
    } catch (e) {
      print('Get API error ----------> $e');
      throw Exception('Failed to load data');
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: getApi(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Something went wrong: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Data not available'));
          } else {
            // Snapshot has data, build the list
            final data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(data[index]['title'],style: TextStyle(
                      fontSize: 21,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w600
                    ),),
                    subtitle: Text(data[index]['body']),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
*/
