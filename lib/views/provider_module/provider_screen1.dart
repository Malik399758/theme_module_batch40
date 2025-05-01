import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_module_batch40/controllers/providers/testing_provider.dart';

class ProviderScreen1 extends StatefulWidget {
  final int count;
  const ProviderScreen1({super.key ,required this.count});

  @override
  State<ProviderScreen1> createState() => _ProviderScreen1State();
}

class _ProviderScreen1State extends State<ProviderScreen1> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TestingProvider>(
      builder: (context,provider,value){
        return Scaffold(
          appBar: AppBar(
          ),
          body: Center(child: Text(widget.count.toString(),style: TextStyle(
              fontSize: 30
          ),)),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              provider.increment();
            },
            child: Icon(Icons.add),),
        );
      },
    );
  }
}
